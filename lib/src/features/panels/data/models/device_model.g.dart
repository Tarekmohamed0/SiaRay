// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) => DeviceModel(
      id: (json['id'] as num).toInt(),
      serial_number: json['serial_number'] as String?,
      status: json['status'] as String?,
      mode: json['mode'] as String?,
      ip_address: json['ip_address'] as String?,
      user_id: (json['user_id'] as num).toInt(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$DeviceModelToJson(DeviceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serial_number': instance.serial_number,
      'status': instance.status,
      'mode': instance.mode,
      'ip_address': instance.ip_address,
      'user_id': instance.user_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
