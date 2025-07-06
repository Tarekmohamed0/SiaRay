// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_devices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubDevices _$SubDevicesFromJson(Map<String, dynamic> json) => SubDevices(
      subdevices: (json['subdevices'] as List<dynamic>?)
          ?.map((e) => Subdevice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubDevicesToJson(SubDevices instance) =>
    <String, dynamic>{
      'subdevices': instance.subdevices,
    };
