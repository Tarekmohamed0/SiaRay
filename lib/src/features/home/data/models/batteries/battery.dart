import 'package:final_project/src/features/home/data/models/batteries/battery_reading.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'battery.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class Battery {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? serial_number;
  @HiveField(2)
  final int? capacity;
  @HiveField(3)
  final int? device_id;
  @HiveField(4)
  final String? created_at;
  @HiveField(5)
  final String? updated_at;
  @HiveField(6)
  List<BatteryReading> battery_readings;

  Battery({
    this.id,
    this.serial_number,
    this.capacity,
    this.device_id,
    this.created_at,
    this.updated_at,
    required this.battery_readings,
  });

  factory Battery.fromJson(Map<String, dynamic> json) =>
      _$BatteryFromJson(json);

  Map<String, dynamic> toJson() => _$BatteryToJson(this);
}
