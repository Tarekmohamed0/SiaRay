import 'package:final_project/src/features/devices/data/models/device.dart';
import 'package:json_annotation/json_annotation.dart';
part 'add_sub_devices_home_response.g.dart';

@JsonSerializable()
class AddSubDevicesHomeResponse {
  final String message;
  final Device device;

  const AddSubDevicesHomeResponse({
    required this.message,
    required this.device,
  });
  factory AddSubDevicesHomeResponse.fromJson(Map<String, dynamic> json) =>
      _$AddSubDevicesHomeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddSubDevicesHomeResponseToJson(this);
}
