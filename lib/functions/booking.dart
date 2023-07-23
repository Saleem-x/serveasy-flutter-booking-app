import 'package:cloud_firestore/cloud_firestore.dart';

getavailableslots() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  QuerySnapshot querySnapshot = await firestore.collection('Bookings').get();
}
