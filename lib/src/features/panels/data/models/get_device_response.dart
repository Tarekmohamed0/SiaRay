import 'package:final_project/src/features/panels/data/models/device_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_device_response.g.dart';

@JsonSerializable()
class GetDeviceResponse {
  final DeviceModel? device;

  GetDeviceResponse({
    required this.device,
  });

  factory GetDeviceResponse.fromJson(Map<String, dynamic> json) =>
      _$GetDeviceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetDeviceResponseToJson(this);
}
