// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_device_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddDeviceRequest _$AddDeviceRequestFromJson(Map<String, dynamic> json) =>
    AddDeviceRequest(
      subDeviceId: (json['subdevice_id'] as num).toInt(),
      watPerHour: (json['watt_per_hour'] as num).toInt(),
      deviceName: json['name'] as String,
    );

Map<String, dynamic> _$AddDeviceRequestToJson(AddDeviceRequest instance) =>
    <String, dynamic>{
      'subdevice_id': instance.subDeviceId,
      'watt_per_hour': instance.watPerHour,
      'name': instance.deviceName,
    };
