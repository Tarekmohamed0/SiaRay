import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/notificatoin/data/models/notification_respone.dart';

import '../repositories/notification_repo.dart';

class GetNotificationUsecase {
  final NotificationRepo repository;

  GetNotificationUsecase({required this.repository});
  Future<Either<Failure, NotificationRespone>> call() async {
    return await repository.getNotification();
  }
}
