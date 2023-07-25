import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project2/models/addressmodel.dart';

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
      await usercollection.add({
        'address': address.address,
        'country': address.country,
        'state': address.state,
        'city': address.city,
        'zipcode': address.zipcode,
        'id': DateTime.now().millisecondsSinceEpoch,
      }).then((value) {
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
  List<AddressModel>? addresslist;
  try {
    addresslist = usercollection.docs.map((doc) {
      Map<String, dynamic> data = doc.data();
      return AddressModel(data['address'], data['country'], data['state'],
          data['city'], data['zipcode']);
    }).toList();
    // log(addresslist[0].address);
    return addresslist;
  } catch (e) {
    log(e.toString());
  }
}
