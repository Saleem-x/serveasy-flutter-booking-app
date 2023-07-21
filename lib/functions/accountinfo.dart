import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/bloc/accountinfo/accountinfo_bloc.dart';

void fetchUserData(String userId, BuildContext context) {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  User user = firebaseAuth.currentUser!;

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
      final name = user.email!.split('@');
      final email = user.email!;
      context.read<AccountinfoBloc>().add(GetUserDetailsEvent(name[0], email));
    }
  }).catchError((error) {
    log('Error getting document: $error');
  });
}

logout() async {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  firebaseAuth.signOut();
}
