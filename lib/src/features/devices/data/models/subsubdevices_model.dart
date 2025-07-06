import 'package:json_annotation/json_annotation.dart';
part 'subsubdevices_model.g.dart';

@JsonSerializable()
class SubsubdevicesModel {
  final int? id;
  final String? name;
  @JsonKey(name: 'watt_per_hour')
  final int? wattPerHour;
  final String? status;
  @JsonKey(name: 'has_device')
  final String? hasDevice;
  @JsonKey(name: 'subdevice_id')
  final int? subdeviceId;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  SubsubdevicesModel({
    this.id,
    this.hasDevice,
    this.name,
    this.wattPerHour,
    this.status,
    this.subdeviceId,
    this.createdAt,
    this.updatedAt,
  });

  factory SubsubdevicesModel.fromJson(Map<String, dynamic> json) =>
      _$SubsubdevicesModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubsubdevicesModelToJson(this);
}
