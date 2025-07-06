// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthorisationAdapter extends TypeAdapter<Authorisation> {
  @override
  final int typeId = 5;

  @override
  Authorisation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Authorisation(
      token: fields[0] as String?,
      type: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Authorisation obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorisationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Authorisation _$AuthorisationFromJson(Map<String, dynamic> json) =>
    Authorisation(
      token: json['token'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$AuthorisationToJson(Authorisation instance) =>
    <String, dynamic>{
      'token': instance.token,
      'type': instance.type,
    };
