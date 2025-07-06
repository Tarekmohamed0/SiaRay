// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'energy_reading_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnergyReadingResponse _$EnergyReadingResponseFromJson(
        Map<String, dynamic> json) =>
    EnergyReadingResponse(
      lastread: (json['lastread'] as num?)?.toDouble(),
      charge_level: (json['chage_level'] as num?)?.toInt(),
      today: (json['today'] as num?)?.toInt(),
      thisweek: (json['thisweek'] as num?)?.toInt(),
      thismonth: (json['thismonth'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EnergyReadingResponseToJson(
        EnergyReadingResponse instance) =>
    <String, dynamic>{
      'lastread': instance.lastread,
      'chage_level': instance.charge_level,
      'today': instance.today,
      'thisweek': instance.thisweek,
      'thismonth': instance.thismonth,
    };
