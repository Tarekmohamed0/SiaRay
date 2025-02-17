// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batteries.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BatteriesAdapter extends TypeAdapter<Batteries> {
  @override
  final int typeId = 1;

  @override
  Batteries read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Batteries(
      batteries: (fields[0] as List?)?.cast<Battery>(),
    );
  }

  @override
  void write(BinaryWriter writer, Batteries obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.batteries);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BatteriesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Batteries _$BatteriesFromJson(Map<String, dynamic> json) => Batteries(
      batteries: (json['batteries'] as List<dynamic>?)
          ?.map((e) => Battery.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BatteriesToJson(Batteries instance) => <String, dynamic>{
      'batteries': instance.batteries,
    };
