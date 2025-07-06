import 'package:final_project/src/features/signup/data/models/user.dart';
import 'package:final_project/src/features/signup/data/models/auth.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 4)
class UserModel {
  @HiveField(0)
  final String? status;
  @HiveField(1)
  final String? message;
  @HiveField(2)
  final User? user;
  @HiveField(3)
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
