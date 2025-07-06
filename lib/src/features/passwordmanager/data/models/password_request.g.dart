// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordRequest _$PasswordRequestFromJson(Map<String, dynamic> json) =>
    PasswordRequest(
      oldPassword: json['old_password'] as String,
      newPassword: json['password'] as String,
      confirmPassword: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$PasswordRequestToJson(PasswordRequest instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'password': instance.newPassword,
      'password_confirmation': instance.confirmPassword,
    };
