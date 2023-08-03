import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/product/products_bloc.dart';
import 'package:project2/domain/models/product/productmodel.dart';

getAllProducts(BuildContext context) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  QuerySnapshot querySnapshot = await firestore.collection('Products').get();

  List<ProductModel> products = querySnapshot.docs.map((doc) {
    return ProductModel.fromJson(doc.data() as Map<String, dynamic>);
  }).toList();
  // ignore: use_build_context_synchronously
  context.read<ProductsBloc>().add(GetAllProductsEvent(products));
  return products;
}
