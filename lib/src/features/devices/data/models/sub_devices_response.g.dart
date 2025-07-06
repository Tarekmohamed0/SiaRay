// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_devices_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubDevicesResponseImpl _$$SubDevicesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SubDevicesResponseImpl(
      subdevices: (json['subdevices'] as List<dynamic>)
          .map((e) => SubDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubDevicesResponseImplToJson(
        _$SubDevicesResponseImpl instance) =>
    <String, dynamic>{
      'subdevices': instance.subdevices,
    };
