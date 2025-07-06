// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_sub_devices_home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddSubDevicesHomeResponse _$AddSubDevicesHomeResponseFromJson(
        Map<String, dynamic> json) =>
    AddSubDevicesHomeResponse(
      message: json['message'] as String,
      device: Device.fromJson(json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddSubDevicesHomeResponseToJson(
        AddSubDevicesHomeResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'device': instance.device,
    };
