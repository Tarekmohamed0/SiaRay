// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$SubDeviceToJson(SubDevice instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'subsubdevices': instance.subsubdevices,
    };

_$SubDeviceImpl _$$SubDeviceImplFromJson(Map<String, dynamic> json) =>
    _$SubDeviceImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      subsubdevices: (json['subsubdevices'] as List<dynamic>?)
              ?.map((e) => SubSubDevice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SubDeviceImplToJson(_$SubDeviceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'subsubdevices': instance.subsubdevices,
    };
