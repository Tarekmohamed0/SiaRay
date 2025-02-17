// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battery.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BatteryAdapter extends TypeAdapter<Battery> {
  @override
  final int typeId = 0;

  @override
  Battery read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Battery(
      id: fields[0] as int?,
      serial_number: fields[1] as String?,
      capacity: fields[2] as int?,
      device_id: fields[3] as int?,
      created_at: fields[4] as String?,
      updated_at: fields[5] as String?,
      battery_readings: (fields[6] as List).cast<BatteryReading>(),
    );
  }

  @override
  void write(BinaryWriter writer, Battery obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.serial_number)
      ..writeByte(2)
      ..write(obj.capacity)
      ..writeByte(3)
      ..write(obj.device_id)
      ..writeByte(4)
      ..write(obj.created_at)
      ..writeByte(5)
      ..write(obj.updated_at)
      ..writeByte(6)
      ..write(obj.battery_readings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BatteryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Battery _$BatteryFromJson(Map<String, dynamic> json) => Battery(
      id: (json['id'] as num?)?.toInt(),
      serial_number: json['serial_number'] as String?,
      capacity: (json['capacity'] as num?)?.toInt(),
      device_id: (json['device_id'] as num?)?.toInt(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      battery_readings: (json['battery_readings'] as List<dynamic>)
          .map((e) => BatteryReading.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BatteryToJson(Battery instance) => <String, dynamic>{
      'id': instance.id,
      'serial_number': instance.serial_number,
      'capacity': instance.capacity,
      'device_id': instance.device_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'battery_readings': instance.battery_readings,
    };
