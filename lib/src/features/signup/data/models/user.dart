import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
@HiveType(typeId: 3)
class User {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2)
  final String? email;
  @HiveField(3)
  final String? phone;
  @HiveField(4)
  final String? city;
  @HiveField(5)
  final String? image;
  @HiveField(6)
  @JsonKey(name: 'fcm_token')
  final String? fcmToken;
  @HiveField(7)
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @HiveField(8)
  @JsonKey(name: 'admin_id')
  final int? adminId;
  @HiveField(9)
  final DateTime? updatedAt;
  @HiveField(10)
  final DateTime? createdAt;

  const User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.city,
    this.image,
    this.fcmToken,
    this.emailVerifiedAt,
    this.adminId,
    this.updatedAt,
    this.createdAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
