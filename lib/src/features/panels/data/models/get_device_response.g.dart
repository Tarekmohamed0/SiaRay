// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetDeviceResponse _$GetDeviceResponseFromJson(Map<String, dynamic> json) =>
    GetDeviceResponse(
      device: json['device'] == null
          ? null
          : DeviceModel.fromJson(json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetDeviceResponseToJson(GetDeviceResponse instance) =>
    <String, dynamic>{
      'device': instance.device,
    };
