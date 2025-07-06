// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_sub_device_home_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddSubDeviceHomeRequest _$AddSubDeviceHomeRequestFromJson(
        Map<String, dynamic> json) =>
    AddSubDeviceHomeRequest(
      subsubdeviceId: (json['subsubdevice_id'] as num?)?.toInt(),
      hasDevice: json['has_device'] as String?,
    );

Map<String, dynamic> _$AddSubDeviceHomeRequestToJson(
        AddSubDeviceHomeRequest instance) =>
    <String, dynamic>{
      'subsubdevice_id': instance.subsubdeviceId,
      'has_device': instance.hasDevice,
    };
