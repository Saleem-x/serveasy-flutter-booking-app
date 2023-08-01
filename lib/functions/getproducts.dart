import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/product/products_bloc.dart';
import 'package:project2/domain/models/productmodel.dart';

getAllProducts(BuildContext context) async {
  log('gettting');
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  QuerySnapshot querySnapshot = await firestore.collection('Products').get();

  List<ProductModel> products = querySnapshot.docs.map((doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return ProductModel(
      data['name'],
      data['price'],
      data['description'],
      data['imageurl'],
      data['id'],
      data['stock'],
    );
  }).toList();
  // ignore: use_build_context_synchronously
  context.read<ProductsBloc>().add(GetAllProductsEvent(products));
  // log(products[0].name);
  return products;
}
