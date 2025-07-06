import 'package:final_project/src/features/notificatoin/data/models/notification_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_respone.g.dart';

@JsonSerializable()
class NotificationRespone {
  final List<NotificationModel> notification;

  NotificationRespone({
    required this.notification,
  });

  factory NotificationRespone.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponeFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationResponeToJson(this);
}
