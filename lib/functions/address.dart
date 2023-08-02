import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project2/domain/models/address/addressmodel.dart';

// AddressModel(address, country, state, city, zipcode)

addAddress(AddressModel address) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final parentcollection = firestore.collection('Alluser-Address');
  final email = await getuser();

  List<AddressModel>? addresslist = await getAddressllist();
  if (addresslist == null || addresslist.length < 3) {
    final usercollection =
        parentcollection.doc(email).collection('Address-list');
    try {
      await usercollection
          .add(
        address.toJson(),
      )
          .then((value) {
        log(jsonEncode(value));
        return true;
      });
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  } else {
    log('full');
  }
}

getuser() async {
  User? user = FirebaseAuth.instance.currentUser;

  final email = user!.email;
  log(email.toString());
  return email;
}

getAddressllist() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final parentcollection = firestore.collection('Alluser-Address');
  final email = await getuser();

  final usercollection =
      await parentcollection.doc(email).collection('Address-list').get();
  List<AddressModel> addresslist = [];
  try {
    addresslist = usercollection.docs.map((doc) {
      return AddressModel.fromJson(doc.data());
    }).toList();
    return addresslist;
  } catch (e) {
    log(e.toString());
  }
}
