import 'package:final_project/src/core/error/erorr_handler.dart';
import 'package:final_project/src/features/notificatoin/data/implements/implements.dart';
import 'package:final_project/src/features/notificatoin/data/models/notification_model.dart';
import 'package:final_project/src/features/notificatoin/data/sources/notification_remote_data_source.dart';
import 'package:final_project/src/features/notificatoin/domain/usecases/get_notification_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notificatoin_event.dart';
part 'notificatoin_state.dart';
part 'notificatoin_bloc.freezed.dart';

class NotificatoinBloc extends Bloc<NotificatoinEvent, NotificatoinState> {
  NotificatoinBloc() : super(NotificatoinState.initial()) {
    final GetNotificationUsecase getNotificationUsecase =
        GetNotificationUsecase(
            repository: NotificatoinRepositoryImp(
                remoteDataSource: NotificationRemoteDataSource()));
    on<NotificatoinEvent>((event, emit) async {
      try {
        if (event is GetNotifications) {
          emit(NotificatoinState.loading());
          final response = await getNotificationUsecase.call();
          response.fold((l) => ErrorHandler.handle(l).failure.message, (r) {
            final notifications = r.notification;
            emit(NotificatoinState.loaded(notifications));
          });
        }
      } catch (e) {
        emit(NotificatoinState.error(ErrorHandler.handle(e).failure.message));
      }
    });
  }
}
