import 'package:json_annotation/json_annotation.dart';
part 'password_request.g.dart';

@JsonSerializable()
class PasswordRequest {
  @JsonKey(name: 'old_password')
  final String oldPassword;
  @JsonKey(name: 'password')
  final String newPassword;
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;

  PasswordRequest({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmPassword,
  });

  factory PasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$PasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordRequestToJson(this);
}
