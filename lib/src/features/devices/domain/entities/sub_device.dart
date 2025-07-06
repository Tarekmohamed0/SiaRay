import 'package:freezed_annotation/freezed_annotation.dart';
import 'sub_sub_device.dart';

part 'sub_device.freezed.dart';
part 'sub_device.g.dart';

@JsonSerializable()
@freezed
class SubDevice with _$SubDevice {
  const factory SubDevice({
    required int id,
    required String name,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @Default([]) List<SubSubDevice> subsubdevices,
  }) = _SubDevice;

  factory SubDevice.fromJson(Map<String, dynamic> json) =>
      _$SubDeviceFromJson(json);
}
