import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/notificatication.dart/notificationmodel.dart';
import 'package:project2/domain/repos/i_noti_repo.dart';

@LazySingleton(as: INoitificationRepo)
class NotificationRepo implements INoitificationRepo {
  @override
  Future<Either<MainFailures, List<NotificationModel>>>
      getNotifications() async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      final notidata = await firestore.collection('notification').get();
      List<NotificationModel> notificationlist = notidata.docs.map((doc) {
        return NotificationModel.fromJson(doc.data());
      }).toList();

      return right(notificationlist);
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }
}
