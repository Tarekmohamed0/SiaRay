import 'package:json_annotation/json_annotation.dart';

part 'add_sub_device_home_request.g.dart';

@JsonSerializable()
class AddSubDeviceHomeRequest {
  @JsonKey(name: 'subsubdevice_id')
  final int? subsubdeviceId;
  @JsonKey(name: 'has_device')
  final String? hasDevice;

  const AddSubDeviceHomeRequest({
    this.subsubdeviceId,
    this.hasDevice,
  });

  factory AddSubDeviceHomeRequest.fromJson(Map<String, dynamic> json) =>
      _$AddSubDeviceHomeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddSubDeviceHomeRequestToJson(this);
}
