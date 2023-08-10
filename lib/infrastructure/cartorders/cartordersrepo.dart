import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/cartordersmodel/cartordersmodel.dart';
import 'package:project2/domain/models/product/productmodel.dart';
import 'package:project2/domain/repos/icartordersrepo.dart';

@LazySingleton(as: ICartOrdersRepo)
class CartOdersRepo implements ICartOrdersRepo {
  @override
  Future<Either<MainFailures, List<CartOrderModel>>> getcartorders() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      final snapshot = await firestore
          .collection('Allusercart')
          .doc(user!.email)
          .collection('CartOrders')
          .get();
      final cartorders = snapshot.docs.map((doc) {
        return GetCartOrdersModel.fromJson(doc.data());
      }).toList();

      List<ProductandCount> productandcount = [];
      for (int i = 0; i < cartorders.length; i++) {
        productandcount
            .add(await convertproductandcount(cartorders[i].productslist));
      }
      List<CartOrderModel> cartorderslist = [];
      for (int i = 0; i < cartorders.length; i++) {
        cartorderslist.add(CartOrderModel(
            cartorders[i].date,
            cartorders[i].id,
            productandcount,
            cartorders[i].status,
            cartorders[i].refurl,
            cartorders[i].total));
      }
      return right(cartorderslist);
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }

  convertproductandcount(Map<String, dynamic> products) async {
    List<ProductModel> productslist = await getAllProducts();
    List<ProductandCount> productandcount = [];
    List<String> productid = products.keys.toList();
    List<dynamic> productcount = products.values.toList();

    for (int i = 0; i < productid.length; i++) {
      for (int j = 0; j < productslist.length; j++) {
        if (productid[i] == productslist[j].id) {
          productandcount.add(
            ProductandCount(productslist[j], productcount[i]),
          );
        }
      }
    }
    return productandcount;
  }

  getAllProducts() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot querySnapshot = await firestore.collection('Products').get();

    List<ProductModel> products = querySnapshot.docs.map((doc) {
      return ProductModel.fromJson(doc.data() as Map<String, dynamic>);
    }).toList();
    return products;
  }
}
