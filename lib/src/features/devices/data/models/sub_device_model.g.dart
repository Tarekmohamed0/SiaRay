// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubDeviceModel _$SubDeviceModelFromJson(Map<String, dynamic> json) =>
    SubDeviceModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      subsubdevices: (json['subsubdevices'] as List<dynamic>)
          .map((e) => SubsubdevicesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubDeviceModelToJson(SubDeviceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'subsubdevices': instance.subsubdevices,
    };
