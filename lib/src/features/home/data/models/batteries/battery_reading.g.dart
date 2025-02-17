// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battery_reading.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BatteryReadingAdapter extends TypeAdapter<BatteryReading> {
  @override
  final int typeId = 2;

  @override
  BatteryReading read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BatteryReading(
      id: fields[0] as int?,
      battery_id: fields[1] as int?,
      energy_stored: fields[2] as int?,
      charge_level: fields[3] as int?,
      created_at: fields[4] as String?,
      updated_at: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BatteryReading obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.battery_id)
      ..writeByte(2)
      ..write(obj.energy_stored)
      ..writeByte(3)
      ..write(obj.charge_level)
      ..writeByte(4)
      ..write(obj.created_at)
      ..writeByte(5)
      ..write(obj.updated_at);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BatteryReadingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatteryReading _$BatteryReadingFromJson(Map<String, dynamic> json) =>
    BatteryReading(
      id: (json['id'] as num?)?.toInt(),
      battery_id: (json['battery_id'] as num?)?.toInt(),
      energy_stored: (json['energy_stored'] as num?)?.toInt(),
      charge_level: (json['charge_level'] as num?)?.toInt(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$BatteryReadingToJson(BatteryReading instance) =>
    <String, dynamic>{
      'id': instance.id,
      'battery_id': instance.battery_id,
      'energy_stored': instance.energy_stored,
      'charge_level': instance.charge_level,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
