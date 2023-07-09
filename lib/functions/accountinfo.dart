import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/accountinfo/accountinfo_bloc.dart';

void fetchUserData(String userId, BuildContext context) {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  firestore
      .collection('users')
      .doc(userId)
      .get()
      .then((DocumentSnapshot documentSnapshot) {
    if (documentSnapshot.exists) {
      Map<String, dynamic> data =
          documentSnapshot.data() as Map<String, dynamic>;

      String name = data['name'];
      String phone = data['age'];

      context.read<AccountinfoBloc>().add(GetUserDetailsEvent(name, phone));
    } else {
      log('Document does not exist');
    }
  }).catchError((error) {
    log('Error getting document: $error');
  });
}
