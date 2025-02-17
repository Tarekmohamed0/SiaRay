import 'package:final_project/src/features/home/data/models/batteries/battery.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'batteries.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class Batteries {
  @HiveField(0)
  List<Battery>? batteries;

  Batteries({this.batteries});

  factory Batteries.fromJson(Map<String, dynamic> json) =>
      _$BatteriesFromJson(json);

  Map<String, dynamic> toJson() => _$BatteriesToJson(this);
}
