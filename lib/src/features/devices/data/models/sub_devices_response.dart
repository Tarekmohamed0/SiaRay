import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/sub_device.dart';

part 'sub_devices_response.freezed.dart';
part 'sub_devices_response.g.dart';

@freezed
class SubDevicesResponse with _$SubDevicesResponse {
  const factory SubDevicesResponse({
    required List<SubDevice> subdevices,
  }) = _SubDevicesResponse;

  factory SubDevicesResponse.fromJson(Map<String, dynamic> json) =>
      _$SubDevicesResponseFromJson(json);
}
