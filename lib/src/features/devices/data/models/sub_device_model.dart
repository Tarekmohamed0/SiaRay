import 'package:final_project/src/features/devices/data/models/subsubdevices_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sub_device_model.g.dart';

@JsonSerializable()
class SubDeviceModel {
  final int? id;
  final String? name;
  final String? created_at;
  final String? updated_at;
  final List<SubsubdevicesModel> subsubdevices;

  SubDeviceModel({
    required this.id,
    required this.name,
    required this.created_at,
    required this.updated_at,
    required this.subsubdevices,
  });

  factory SubDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$SubDeviceModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubDeviceModelToJson(this);
}
