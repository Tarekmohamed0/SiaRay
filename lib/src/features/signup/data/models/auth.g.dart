// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

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
