import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/models/servisebookingmodel.dart';

bookService(
    ServiceBookingModel service, BuildContext context, String username) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final parentcollection = firestore.collection('Service-Bookings');
  final email = await getuser();

  final usercollection = parentcollection.doc(email).collection('Booked');
  List<GetServicemodel> servicesbooked = await getbookedservices(service.date);
  if (servicesbooked.length < 3) {
    try {
      await usercollection.add({
        'organiser': username,
        'userid': service.userid,
        'date': DateFormat('yyyy-MM-dd').format(service.date),
        'mobile': service.mobile,
        'timeslot': service.timeslote,
        'requirements': service.requirments,
        'serviceid': service.service.id,
        'id': service.id
      });
      // ignore: use_build_context_synchronously
      addtobookingtoglobal(service, username, context);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(SnackBar(
            backgroundColor: Colors.green,
            content: Row(
              children: [
                const Icon(
                  Icons.info,
                  color: colorwhite,
                ),
                Text(
                  'Service booked successfully',
                  style: fontstyle(color: colorwhite),
                )
              ],
            )));
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } catch (e) {
      log(e.toString());
    }
  } else {
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Row(
            children: [
              const Icon(
                Icons.info,
                color: colorwhite,
              ),
              Text(
                'no slots for booking in the selected date',
                style: fontstyle(color: colorwhite),
              )
            ],
          )));
  }
}

getevents(DateTime date, String slot, Map<String, List> eventslist) {
  if (eventslist[DateFormat('yyyy-MM-dd').format(date)] != null) {
    return eventslist[DateFormat('yyyy-MM-dd').format(date)];
  } else {
    return [];
  }
}

booknow(DateTime date, String slot) {
  Map<String, List> eventslist = {};
  if (eventslist[DateFormat('yyyy-MM-dd').format(date)] != null) {
    eventslist[DateFormat('yyyy-MM-dd').format(date)]!
        .add({'Userid': '', 'slot': slot});
  } else {
    User? user = FirebaseAuth.instance.currentUser;

    final email = user!.email;

    eventslist[DateFormat('yyyy-MM-dd').format(date)] = [
      {'userid': email, 'slot': slot}
    ];
  }
  getevents(date, slot, eventslist);
}

getuser() async {
  User? user = FirebaseAuth.instance.currentUser;

  final email = user!.email;
  return email;
}

addtobookingtoglobal(
    ServiceBookingModel service, String username, BuildContext context) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final collectionref = firestore.collection('All-Booking');

  final bookindate = collectionref
      .doc(DateFormat('yyyy-MM-dd').format(service.date))
      .collection('booking');

  List<GetServicemodel> bookedlist = await getbookedservices(service.date);
  if (bookedlist.length < 3) {
    try {
      bookindate.add({
        'organiser': username,
        'userid': service.userid,
        'date': DateFormat('yyyy-MM-dd').format(service.date),
        'mobile': service.mobile,
        'timeslot': service.timeslote,
        'requirements': service.requirments,
        'serviceid': service.service.id,
        'id': service.id
      });
    } catch (e) {
      log(e.toString());
    }
  } else {
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Row(
            children: [
              const Icon(
                Icons.info,
                color: colorwhite,
              ),
              Text(
                'no slots for booking in the selected date ',
                style: fontstyle(color: colorwhite),
              )
            ],
          )));
  }
}

getbookedservices(DateTime date) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final collectionref = firestore.collection('All-Booking');

  final bookindate = collectionref
      .doc(DateFormat('yyyy-MM-dd').format(date))
      .collection('booking');

  final snapshot = await bookindate.get();
  List<GetServicemodel> servicesbooked = snapshot.docs.map((doc) {
    Map<String, dynamic> data = doc.data() /* as Map<String, dynamic> */;
    return GetServicemodel(
      data['organiser'],
      data['userid'],
      data['date'],
      data['mobile'],
      data['timeslot'],
      data['requirements'],
      data['serviceid'],
      data['id'],
    );
  }).toList();
  return servicesbooked;
}
