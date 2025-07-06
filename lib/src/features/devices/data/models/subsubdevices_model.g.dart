// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subsubdevices_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubsubdevicesModel _$SubsubdevicesModelFromJson(Map<String, dynamic> json) =>
    SubsubdevicesModel(
      id: (json['id'] as num?)?.toInt(),
      hasDevice: json['has_device'] as String?,
      name: json['name'] as String?,
      wattPerHour: (json['watt_per_hour'] as num?)?.toInt(),
      status: json['status'] as String?,
      subdeviceId: (json['subdevice_id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$SubsubdevicesModelToJson(SubsubdevicesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'watt_per_hour': instance.wattPerHour,
      'status': instance.status,
      'has_device': instance.hasDevice,
      'subdevice_id': instance.subdeviceId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
