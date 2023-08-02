import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project2/constents/colors.dart';
import 'package:project2/domain/models/address/addressmodel.dart';
import 'package:project2/domain/models/service/servicemodel.dart';
import 'package:project2/domain/models/servisebookingmodel.dart';

bookService(ServiceBookingModel service, BuildContext context, String username,
    String requirements, AddressModel address) async {
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
        'requirements': requirements,
        'address':
            '${address.address}/${address.city}/${address.state}/${address.country}',
        'serviceid': service.service.id,
        'id': service.id,
        'status': 'booked'
      });
      // ignore: use_build_context_synchronously
      addtobookingtoglobal(
          service,
          username,
          context,
          '${address.address}/${address.city}/${address.state}/${address.country}',
          requirements);
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

addtobookingtoglobal(ServiceBookingModel service, String username,
    BuildContext context, String address, String requirements) async {
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
        'requirements': requirements,
        'serviceid': service.service.id,
        'address': address,
        'id': service.id,
        'status': 'booked'
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

  List<ServiceModel> serviceslist = await getservices();
  final snapshot = await bookindate.get();
  List<GetServicemodel> servicesbooked = snapshot.docs.map((doc) {
    ServiceModel? service;
    Map<String, dynamic> data = doc.data() /* as Map<String, dynamic> */;
    for (ServiceModel item in serviceslist) {
      if (item.id == data['serviceid']) {
        service = item;
      }
    }
    return GetServicemodel(
      data['organiser'],
      data['userid'],
      data['date'],
      data['mobile'],
      data['timeslot'],
      data['requirements'],
      service!,
      data['id'],
      data['address'],
      data['status'],
    );
  }).toList();

  return servicesbooked;
}

getavailableslots(DateTime date) async {
  List<GetServicemodel> servicesbooked = await getbookedservices(date);
  List<int> bookedslots = [];
  for (int i = 0; i < servicesbooked.length; i++) {
    bookedslots.add(int.parse(servicesbooked[i].timeslot));
    log(servicesbooked[i].timeslot);
  }

  return bookedslots;
}

getuserbookedservices() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final email = await getuser();

  try {
    ServiceModel? service;
    List<ServiceModel> serviceslist = await getservices();

    final querySnapshot = await firestore
        .collection('Service-Bookings')
        .doc(email)
        .collection('Booked')
        .get();

    List<GetServicemodel> servicebooked = querySnapshot.docs.map((doc) {
      Map<String, dynamic> data = doc.data();

      for (ServiceModel item in serviceslist) {
        if (item.id == data['serviceid']) {
          service = item;
        }
      }
      return GetServicemodel(
          data['organiser'],
          data['userid'],
          data['date'],
          data['mobile'],
          data['timeslot'],
          data['requirements'],
          service!,
          data['id'],
          data['address'],
          data['status']);
    }).toList();
    // log(servicebooked[0].serviceid);
    return servicebooked;
  } catch (e) {
    log('error ${e.toString()}');
  }
}

getservices() async {
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
  return services;
}
