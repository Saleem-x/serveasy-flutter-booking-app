import 'package:dartz/dartz.dart';
import 'package:project2/domain/failures/mainfailure.dart';
import 'package:project2/domain/models/notificatication.dart/notificationmodel.dart';

abstract class INoitificationRepo {
  Future<Either<MainFailures, List<NotificationModel>>> getNotifications();
}
