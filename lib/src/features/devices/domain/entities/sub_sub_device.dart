import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_sub_device.freezed.dart';
part 'sub_sub_device.g.dart';

@JsonSerializable()
@freezed
class SubSubDevice with _$SubSubDevice {
  const factory SubSubDevice({
    required int id,
    required String name,
    @JsonKey(name: 'watt_per_hour') required int wattPerHour,
    required String status,
    @JsonKey(name: 'has_device') required String hasDevice,
    @JsonKey(name: 'subdevice_id') required int subdeviceId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _SubSubDevice;

  factory SubSubDevice.fromJson(Map<String, dynamic> json) =>
      _$SubSubDeviceFromJson(json);
}
