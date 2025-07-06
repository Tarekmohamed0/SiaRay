// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subdevice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subdevice _$SubdeviceFromJson(Map<String, dynamic> json) => Subdevice(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      subsubdevices: (json['subsubdevices'] as List<dynamic>?)
          ?.map((e) => Subsubdevice.fromJson(e as String))
          .toList(),
    );

Map<String, dynamic> _$SubdeviceToJson(Subdevice instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'subsubdevices': instance.subsubdevices,
    };
