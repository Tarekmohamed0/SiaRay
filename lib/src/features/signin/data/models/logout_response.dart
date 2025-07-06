import 'package:json_annotation/json_annotation.dart';
part 'logout_response.g.dart';

@JsonSerializable()
class LogoutResponse {
  final String? status;
  final String? message;

  LogoutResponse({
    this.status,
    this.message,
  });

  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LogoutResponseToJson(this);
}
