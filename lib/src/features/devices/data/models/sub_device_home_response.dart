import 'package:final_project/src/features/devices/data/models/subsubdevices_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sub_device_home_response.g.dart';

@JsonSerializable()
class SubDeviceHomeResponse {
  final String? message;
  final List<SubsubdevicesModel>? SubSubDevices;

  const SubDeviceHomeResponse({
    this.message,
    this.SubSubDevices,
  });
  factory SubDeviceHomeResponse.fromJson(Map<String, dynamic> json) =>
      _$SubDeviceHomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubDeviceHomeResponseToJson(this);
}
