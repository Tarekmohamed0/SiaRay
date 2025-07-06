// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_sub_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SubSubDeviceToJson(SubSubDevice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'watt_per_hour': instance.wattPerHour,
      'status': instance.status,
      'has_device': instance.hasDevice,
      'subdevice_id': instance.subdeviceId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$SubSubDeviceImpl _$$SubSubDeviceImplFromJson(Map<String, dynamic> json) =>
    _$SubSubDeviceImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      wattPerHour: (json['watt_per_hour'] as num).toInt(),
      status: json['status'] as String,
      hasDevice: json['has_device'] as String,
      subdeviceId: (json['subdevice_id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$SubSubDeviceImplToJson(_$SubSubDeviceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'watt_per_hour': instance.wattPerHour,
      'status': instance.status,
      'has_device': instance.hasDevice,
      'subdevice_id': instance.subdeviceId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
