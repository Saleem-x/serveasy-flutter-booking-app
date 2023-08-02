import 'package:dartz/dartz.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/chatmodel.dart';

abstract class IChatResponseRepo {
  Future<Either<MainFailures, List<ChatModel>>> getchatchatlist(String uid);

  Future<Either<MainFailures, ChatModel>> sendmesage(
      ChatModel chat, String userid);
}
