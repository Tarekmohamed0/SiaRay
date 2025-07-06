import 'package:json_annotation/json_annotation.dart';
part 'add_device_home_error_response.g.dart';

@JsonSerializable()
class AddDeviceHomeErrorResponse {
  final String? message;
  final String? error;

  const AddDeviceHomeErrorResponse({
    this.message,
    this.error,
  });

  factory AddDeviceHomeErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$AddDeviceHomeErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddDeviceHomeErrorResponseToJson(this);
}
