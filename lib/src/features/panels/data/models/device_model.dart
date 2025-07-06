import 'package:json_annotation/json_annotation.dart';
part 'device_model.g.dart';

@JsonSerializable()
class DeviceModel {
  final int id;
  final String? serial_number;
  final String? status;
  final String? mode;
  final String? ip_address;
  final int user_id;
  final String? created_at;
  final String? updated_at;

  DeviceModel({
    required this.id,
    required this.serial_number,
    required this.status,
    required this.mode,
    required this.ip_address,
    required this.user_id,
    required this.created_at,
    required this.updated_at,
  });

  factory DeviceModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceModelToJson(this);
}
