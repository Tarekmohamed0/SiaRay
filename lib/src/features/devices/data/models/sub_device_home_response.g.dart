// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_device_home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubDeviceHomeResponse _$SubDeviceHomeResponseFromJson(
        Map<String, dynamic> json) =>
    SubDeviceHomeResponse(
      message: json['message'] as String?,
      SubSubDevices: (json['SubSubDevices'] as List<dynamic>?)
          ?.map((e) => SubsubdevicesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubDeviceHomeResponseToJson(
        SubDeviceHomeResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'SubSubDevices': instance.SubSubDevices,
    };
