import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/service/service_bloc.dart';
import 'package:project2/domain/models/service/servicemodel.dart';

getAllServices(BuildContext context) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  QuerySnapshot querySnapshot = await firestore.collection('Services').get();

  List<ServiceModel> services = querySnapshot.docs.map((doc) {
    return ServiceModel.fromJson(doc.data() as Map<String, dynamic>);
  }).toList();
  Future.delayed(const Duration(microseconds: 100), () {
    context.read<ServiceBloc>().add(GetAllServicesEvent(services));
  });
}
