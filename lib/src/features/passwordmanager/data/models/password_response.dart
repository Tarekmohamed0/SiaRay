import 'package:json_annotation/json_annotation.dart';
part 'password_response.g.dart';

@JsonSerializable()
class PasswordResponse {
  final String? status;
  final String? message;

  PasswordResponse({
    this.status,
    this.message,
  });

  factory PasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$PasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordResponseToJson(this);
}
