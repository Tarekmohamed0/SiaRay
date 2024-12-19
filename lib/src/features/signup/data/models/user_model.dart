import 'package:final_project/src/features/signup/data/models/user.dart';
import 'package:final_project/src/features/signup/data/models/auth.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String? status;
  final String? message;
  final User? user;
  final Authorisation? authorisation;

  const UserModel({
    this.status,
    this.message,
    this.user,
    this.authorisation,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
