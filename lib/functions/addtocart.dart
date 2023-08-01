import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/cart/cart_bloc.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/functions/getproducts.dart';
import 'package:project2/domain/models/cartitemmodel.dart';
import 'package:project2/domain/models/productmodel.dart';
import 'dart:developer';

addtocart(ProductModel product, int itemcount, BuildContext context) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final parentcollection = firestore.collection('Allusercart');

  final email = await getuser();

  final usercollection = parentcollection.doc(email).collection('cartitems');

  try {
    await usercollection.add(
      {
        'product': product.id,
        'itemcount': itemcount,
        'time': DateTime.now().microsecondsSinceEpoch,
        'availability': product.stock > 0 ? 'Available' : 'Stock Out',
        'id': DateTime.now().microsecondsSinceEpoch,
      },
    );
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(const SnackBar(
          backgroundColor: Colors.green,
          content: Row(
            children: [
              Icon(
                Icons.info,
                color: colorwhite,
              ),
              Text('Product Added To cart')
            ],
          )));
  } catch (e) {
    log(e.toString());
  }
}

findduplicate(BuildContext context, ProductModel product) async {
  List<CartItemmodel> cartitems = await getcartitems(context);

  for (int i = 0; i < cartitems.length; i++) {
    if (product.id == cartitems[i].product.id) {
      return true;
    }
  }
  return false;
}

getuser() async {
  User? user = FirebaseAuth.instance.currentUser;

  final email = user!.email;
  return email;
}

getcartitems(BuildContext context) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final parentcollection = firestore.collection('Allusercart');
  ProductModel? product;
  final email = await getuser();
  // ignore: use_build_context_synchronously
  final productlist = await getAllProducts(context);
  QuerySnapshot querySnapshot =
      await parentcollection.doc(email).collection('cartitems').get();

  List<CartItemmodel> cartitemlist = querySnapshot.docs.map((doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    for (ProductModel item in productlist) {
      if (item.id == data['product']) {
        product = item;
      }
    }
    return CartItemmodel(product!, data['itemcount'], data['time'],
        data['availability'], data['id']);
  }).toList();
  // ignore: use_build_context_synchronously
  if (cartitemlist.isEmpty) {
    // ignore: use_build_context_synchronously
    context.read<CartBloc>().add(GetAllCartItemsEvent(const []));
  } else {
    // ignore: use_build_context_synchronously
    context.read<CartBloc>().add(GetAllCartItemsEvent(cartitemlist));
  }
  return cartitemlist;
}

removefromcart(CartItemmodel cartitem, BuildContext context) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final parentcollection = firestore.collection('Allusercart');
  final email = await getuser();

  QuerySnapshot querySnapshot =
      await parentcollection.doc(email).collection('cartitems').get();

  for (var doc in querySnapshot.docs) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    log(data.toString());
    if (data['product'] == cartitem.product.id) {
      log('hello');
      final id = doc.reference.id;
      log('deletingid$id');
      // await firestore.collection('cartitems').doc(id).delete();
      await parentcollection
          .doc(email)
          .collection('cartitems')
          .doc(id)
          .delete();
    }
  }
  // ignore: use_build_context_synchronously
  getcartitems(context);
}

carttaxcalculate(List<CartItemmodel> cartitems) {
  // int productcount = 0;
  double totalprice = 0;
  for (CartItemmodel item in cartitems) {
    // productcount += item.itemcount;
    totalprice += item.product.price * item.itemcount;
  }

  return 12 / 100 * totalprice;
}

subtotal(List<CartItemmodel> cartitems) {
  double totalprice = 0;
  for (CartItemmodel item in cartitems) {
    totalprice += item.product.price * item.itemcount;
  }
  return totalprice;
}

totalproduct(List<CartItemmodel> cartitems) {
  int productcount = 0;
  for (CartItemmodel item in cartitems) {
    productcount += item.itemcount;
  }
  return productcount;
}

checkout(List<CartItemmodel> cartlist, BuildContext context) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final parentcollection = firestore.collection('Allusercart');

  final email = await getuser();

  final cartitemcollection =
      parentcollection.doc(email).collection('cartitems');
  final usercollection = parentcollection.doc(email).collection('CartOrders');

  try {
    Map<String, int> productids = {};
    for (CartItemmodel item in cartlist) {
      productids[item.product.id] = item.itemcount;
    }
    usercollection.add({
      'products': productids,
      'date': DateTime.now(),
      'status': 'placed',
      'id': DateTime.now().microsecondsSinceEpoch,
    });
    // ignore: use_build_context_synchronously
    cartclearing(cartitemcollection, context);
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(const SnackBar(
          backgroundColor: Colors.green,
          content: Row(
            children: [
              Icon(
                Icons.info,
                color: colorwhite,
              ),
              Text('Order Placed Successfully')
            ],
          )));
  } catch (e) {
    log(e.toString());
  }
}
// final ProductModel product;
//   int itemcount;
//   final int time;
//   final String availability;
//   final int id;

checkuploadstatus(CollectionReference reference) async {
  reference.snapshots().listen((event) {
    if (event.docs.isEmpty) {
      log('no');
    } else {
      // cartclearing(reference);
      log('yes');
    }
  });
}

cartclearing(CollectionReference reference, BuildContext context) async {
  try {
    QuerySnapshot querySnapshot = await reference.get();
    for (var docsnapshot in querySnapshot.docs) {
      await docsnapshot.reference.delete();
      // ignore: use_build_context_synchronously
      getcartitems(context);
    }
  } catch (e) {
    log(e.toString());
  }
}
