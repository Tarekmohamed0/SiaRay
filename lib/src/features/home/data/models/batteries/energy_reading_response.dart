import 'package:freezed_annotation/freezed_annotation.dart';

part 'energy_reading_response.g.dart';

@JsonSerializable()
class EnergyReadingResponse {
  final double? lastread;
  @JsonKey(name: 'chage_level')
  final int? charge_level;
  final int? today;
  final int? thisweek;
  final int? thismonth;

  EnergyReadingResponse({
    this.lastread,
    this.charge_level,
    this.today,
    this.thisweek,
    this.thismonth,
  });

  factory EnergyReadingResponse.fromJson(Map<String, dynamic> json) =>
      _$EnergyReadingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EnergyReadingResponseToJson(this);
}
