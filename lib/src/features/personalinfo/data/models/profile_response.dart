import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  final String? status;
  final String? message;

  ProfileResponse({
    required this.status,
    required this.message,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}
