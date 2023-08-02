import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project2/constents/colors.dart';

import 'package:project2/domain/models/product/productmodel.dart';

buyNowOrderplacing(ProductModel product, int itemcount, String address,
    String paymentmethod, num total, BuildContext context) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  try {
    log('trying');
    final email = await getuser();
    final parentcollection = firestore.collection('allUserOrders');

    final userOrderCollection =
        parentcollection.doc(email).collection('orders');

    await userOrderCollection.add(
      {
        'prodect': product.id,
        'itemcount': itemcount,
        'address': address,
        'paymentmethod': paymentmethod,
        'time': DateTime.now().microsecondsSinceEpoch,
        'status': 'Order Placed',
        'total': total,
      },
    );
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Row(
            children: [
              Icon(
                Icons.info,
                color: colorwhite,
              ),
              SizedBox(
                width: 10,
              ),
              Text('Order Placed Successfully')
            ],
          ),
        ),
      );
    log('completed');
  } catch (e) {
    log(e.toString());
  }
}

getuser() async {
  User? user = FirebaseAuth.instance.currentUser;

  final email = user!.email;
  return email;
}

String formatMicrosecondsSinceEpoch(int microsecondsSinceEpoch) {
  DateTime dateTime =
      DateTime.fromMicrosecondsSinceEpoch(microsecondsSinceEpoch);
  String formattedDateTime =
      '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}';
  return formattedDateTime;
}
