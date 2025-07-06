import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/error/erorr_handler.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/features/notificatoin/data/models/notification_respone.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationRemoteDataSource {
  final ApiServices apiServices = sl<ApiServices>();

  Future<Either<Failure, NotificationRespone>> getnotification() async {
    try {
      final response = await apiServices.getNotification();
      return right(response);
    } catch (e) {
      return left(ErrorHandler.handle(e).failure);
    }
  }
}
