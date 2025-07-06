// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) => Device(
      status: json['status'] as String?,
      subdeviceId: (json['subdevice_id'] as num).toInt(),
      wattPerHour: (json['watt_per_hour'] as num).toInt(),
      name: json['name'] as String,
      updatedAt: DateTime.parse(json['updated_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'subdevice_id': instance.subdeviceId,
      'watt_per_hour': instance.wattPerHour,
      'name': instance.name,
      'status': instance.status,
      'updated_at': instance.updatedAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'id': instance.id,
    };
