part of 'notificatoin_bloc.dart';

@freezed
class NotificatoinState with _$NotificatoinState {
  const factory NotificatoinState.initial() = _Initial;
  const factory NotificatoinState.loading() = Loading;
  const factory NotificatoinState.loaded(
      List<NotificationModel> notifications) = Loaded;

  const factory NotificatoinState.error(String message) = Error;
}
