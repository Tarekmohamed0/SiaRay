import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/notificatoin/data/models/notification_respone.dart';

abstract class NotificationRepo {
  Future<Either<Failure, NotificationRespone>> getNotification();
}
