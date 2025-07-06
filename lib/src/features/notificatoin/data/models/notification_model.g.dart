// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      id: (json['id'] as num).toInt(),
      alertType: json['alert_type'] as String,
      message: json['message'] as String,
      deviceId: (json['device_id'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alert_type': instance.alertType,
      'message': instance.message,
      'device_id': instance.deviceId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
