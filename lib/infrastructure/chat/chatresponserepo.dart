import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/chatmodel.dart';
import 'package:project2/domain/repos/ichatrepo.dart';

@LazySingleton(as: IChatResponseRepo)
class ChatResponseRepo implements IChatResponseRepo {
  @override
  Future<Either<MainFailures, List<ChatModel>>> getchatchatlist(
      String uid) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      final docref = await firestore
          .collection('Chat-Support')
          .doc(uid)
          .collection('messages')
          .orderBy('date', descending: false)
          .get();
      List<ChatModel> chatlist = docref.docs.map((doc) {
        return ChatModel.fromJson(doc.data());
      }).toList();
      return right(chatlist);
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }

  @override
  Future<Either<MainFailures, ChatModel>> sendmesage(
      ChatModel chat, String userid) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    final docref =
        firestore.collection('Chat-Support').doc(userid).collection('messages');
    try {
      await docref.add(chat.toJson());
      return right(chat);
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }
}
