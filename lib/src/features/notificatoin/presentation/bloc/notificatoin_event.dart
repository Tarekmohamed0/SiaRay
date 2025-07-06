part of 'notificatoin_bloc.dart';

@freezed
class NotificatoinEvent with _$NotificatoinEvent {
  const factory NotificatoinEvent.started() = _Started;
  const factory NotificatoinEvent.getNotifications() = GetNotifications;
  const factory NotificatoinEvent.deleteNotification(int id) =
      DeleteNotification;
  const factory NotificatoinEvent.deleteAllNotifications() =
      DeleteAllNotifications;

  const factory NotificatoinEvent.markAsRead(int id) = MarkAsRead;
}
