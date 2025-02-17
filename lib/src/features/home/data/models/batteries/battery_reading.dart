import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'battery_reading.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class BatteryReading {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final int? battery_id;
  @HiveField(2)
  final int? energy_stored;
  @HiveField(3)
  final int? charge_level;
  @HiveField(4)
  final String? created_at;
  @HiveField(5)
  final String? updated_at;

  BatteryReading({
    this.id,
    this.battery_id,
    this.energy_stored,
    this.charge_level,
    this.created_at,
    this.updated_at,
  });

  factory BatteryReading.fromJson(Map<String, dynamic> json) =>
      _$BatteryReadingFromJson(json);

  Map<String, dynamic> toJson() => _$BatteryReadingToJson(this);
}
