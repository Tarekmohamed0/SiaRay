import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/erorr_handler.dart';

import 'package:final_project/src/core/error/error.dart';

import 'package:final_project/src/features/notificatoin/data/models/notification_respone.dart';

import '../sources/notification_remote_data_source.dart';
import '../../domain/repositories/notification_repo.dart';

class NotificatoinRepositoryImp implements NotificationRepo {
  final NotificationRemoteDataSource remoteDataSource;
  NotificatoinRepositoryImp({required this.remoteDataSource});

  @override
  Future<Either<Failure, NotificationRespone>> getNotification() async {
    try {
      final response = await remoteDataSource.getnotification();
      return response.fold(
        (l) => left(l),
        (r) {
          return right(r);
        },
      );
    } catch (e) {
      return left(ErrorHandler.handle(e).failure);
    }
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
