import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/buisnesslogic/bloc/accountinfo/accountinfo_bloc.dart';

void fetchUserData(BuildContext context) {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  User user = firebaseAuth.currentUser!;

  firestore
      .collection('users')
      .doc(user.uid)
      .get()
      .then((DocumentSnapshot documentSnapshot) {
    if (documentSnapshot.exists) {
      Map<String, dynamic> data =
          documentSnapshot.data() as Map<String, dynamic>;

      String name = data['name'];
      String phone = data['age'];
      String imgageurl = data['profileimage'];

      context
          .read<AccountinfoBloc>()
          .add(GetUserDetailsEvent(name, phone, imgageurl));
    } else {
      log('Document does not exist');
      final name = user.email!.split('@');
      final email = user.email!;
      String image = 'no-img';
      context
          .read<AccountinfoBloc>()
          .add(GetUserDetailsEvent(name[0], email, image));
    }
  }).catchError((error) {
    log('Error getting document: $error');
  });
}

logout() async {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  firebaseAuth.signOut();
}

// updateprofileimage(String userId, BuildContext context) async {
//   FirebaseFirestore firestore = FirebaseFirestore.instance;
//   FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   User user = firebaseAuth.currentUser!;

//   firestore.collection('users').doc(userId).update({
//     'name':
//   });
// }
