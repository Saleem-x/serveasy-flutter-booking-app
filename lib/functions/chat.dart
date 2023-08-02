import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project2/domain/models/chatmodel.dart';

sendchatsupport(ChatModel chat) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  User user = FirebaseAuth.instance.currentUser!;
  final docref =
      firestore.collection('Chat-Support').doc(user.uid).collection('messages');

  try {
    await docref.add({
      'userid': user.uid,
      'message': chat.message,
      'time': chat.time,
      'date': chat.date,
      'isAdmin': false,
    });
  } catch (e) {
    log('$e');
  }
}

Future<List<ChatModel>> getchats() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  User user = FirebaseAuth.instance.currentUser!;
  final docref = await firestore
      .collection('Chat-Support')
      .doc(user.uid)
      .collection('messages')
      .orderBy('date')
      .get();
  List<ChatModel> chatlist = docref.docs.map((doc) {
    Map<String, dynamic> data = doc.data();
    return ChatModel(
      data['message'],
      data['date'],
      data['time'],
      data['userid'],
      data['isAdmin'],
    );
  }).toList();
  return chatlist;
}
