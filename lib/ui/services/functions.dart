import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/service/service_bloc.dart';
import 'package:project2/models/servicemodel.dart';

getAllServices(BuildContext context) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  QuerySnapshot querySnapshot = await firestore.collection('Services').get();

  List<ServiceModel> services = querySnapshot.docs.map((doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    double price = data['price'].toDouble();
    return ServiceModel(data['id'],
        name: data['name'],
        price: price,
        description: data['description'],
        imageUrl: data['imageUrl']);
  }).toList();
  // log(services[1].imageUrl);
  // ignore: use_build_context_synchronously
  context.read<ServiceBloc>().add(GetAllServicesEvent(services));
}
