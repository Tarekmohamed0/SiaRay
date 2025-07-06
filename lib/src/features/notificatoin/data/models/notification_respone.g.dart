// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_respone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationRespone _$NotificationResponeFromJson(Map<String, dynamic> json) =>
    NotificationRespone(
      notification: (json['notification'] as List<dynamic>)
          .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotificationResponeToJson(
        NotificationRespone instance) =>
    <String, dynamic>{
      'notification': instance.notification,
    };
