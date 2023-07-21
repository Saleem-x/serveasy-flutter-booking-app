import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/orderslist/orderlist_bloc.dart';
import 'package:project2/functions/getproducts.dart';
import 'package:project2/models/productmodel.dart';
import 'package:project2/models/productordermodel.dart';

getallorders(BuildContext context) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final parentcollection = firestore.collection('allUserOrders');
  final productslist = await getAllProducts(context);
  ProductModel? product;

  final email = await getuser();
  QuerySnapshot querySnapshot =
      await parentcollection.doc(email).collection('orders').get();
  List<ProductOrdermodel> orderslist = querySnapshot.docs.map((doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final productid = int.parse(data['prodect']);
    for (ProductModel item in productslist) {
      if (int.parse(item.id) == productid) {
        product = item;
      }
    }

    return ProductOrdermodel(
        productid,
        data['itemcount'],
        data['address'],
        data['paymentmethod'],
        data['time'],
        data['status'],
        data['total'],
        product!);
  }).toList();
  // log(orderslist[0].total.toString());
  if (orderslist.isEmpty) {
    // ignore: use_build_context_synchronously
    context.read<OrderlistBloc>().add(GetAllOrdersEvent(const []));
  } else {
    // ignore: use_build_context_synchronously
    context.read<OrderlistBloc>().add(GetAllOrdersEvent(orderslist));
  }
}

getuser() async {
  User? user = FirebaseAuth.instance.currentUser;

  final email = user!.email;
  return email;
}
