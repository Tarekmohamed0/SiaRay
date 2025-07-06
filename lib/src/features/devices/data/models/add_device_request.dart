import 'package:json_annotation/json_annotation.dart';
part 'add_device_request.g.dart';

@JsonSerializable()
class AddDeviceRequest {
  @JsonKey(name: 'subdevice_id')
  final int subDeviceId;
  @JsonKey(name: 'watt_per_hour')
  final int watPerHour;
  @JsonKey(name: 'name')
  final String deviceName;

  AddDeviceRequest({
    required this.subDeviceId,
    required this.watPerHour,
    required this.deviceName,
  });

  factory AddDeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$AddDeviceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddDeviceRequestToJson(this);
}
