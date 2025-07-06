import 'package:json_annotation/json_annotation.dart';
part 'device.g.dart';

@JsonSerializable()
class Device {
  @JsonKey(name: 'subdevice_id')
  final int subdeviceId;
  @JsonKey(name: 'watt_per_hour')
  final int wattPerHour;
  final String name;
  final String? status;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final int id;

  Device({
    this.status,
    required this.subdeviceId,
    required this.wattPerHour,
    required this.name,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });
  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}
