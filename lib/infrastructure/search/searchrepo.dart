import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/product/productmodel.dart';
import 'package:project2/domain/models/service/servicemodel.dart';
import 'package:project2/domain/repos/isearchrepo.dart';

@LazySingleton(as: ISearchRepo)
class SearchRepo implements ISearchRepo {
  @override
  Future<Either<MainFailures, List<ProductModel>>> productsearch(
      String query) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      QuerySnapshot querySnapshot =
          await firestore.collection('Products').get();

      List<ProductModel> products = querySnapshot.docs.map((doc) {
        return ProductModel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
      List<ProductModel> productssearch = List.from(products);
      productssearch = products
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase().trim()))
          .toList();

      log(productssearch.length.toString());
      return right(productssearch);
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<ServiceModel>>> searvicesearch(
      String query) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      QuerySnapshot querySnapshot =
          await firestore.collection('Services').get();

      List<ServiceModel> services = querySnapshot.docs.map((doc) {
        return ServiceModel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
      List<ServiceModel> servicessearched = List.from(services);
      servicessearched = services
          .where((element) =>
              element.name.toLowerCase().contains(query.toLowerCase().trim()))
          .toList();

      log(servicessearched.length.toString());

      return right(servicessearched);
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }
}
