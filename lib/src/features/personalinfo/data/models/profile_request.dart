import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_request.g.dart';

@JsonSerializable()
class ProfileRequest {
  final String? name;
  final String? phone;
  final String? city;
  @JsonKey(ignore: true)
  final File? image;

  ProfileRequest({
    this.name,
    this.phone,
    this.city,
    this.image,
  });

  factory ProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileRequestToJson(this);
}
