import 'package:final_project/src/features/devices/data/models/device.dart';
import 'package:json_annotation/json_annotation.dart';
part 'device_response.g.dart';

@JsonSerializable()
class DeviceResponse {
  final String message;
  final Device device;

  DeviceResponse({
    required this.message,
    required this.device,
  });
  factory DeviceResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceResponseToJson(this);
}
