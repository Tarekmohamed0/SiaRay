import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'auth.g.dart';

@JsonSerializable()
@HiveType(typeId: 5)
class Authorisation {
  @HiveField(0)
  final String? token;
  @HiveField(1)
  final String? type;

  const Authorisation({
    this.token,
    this.type,
  });

  factory Authorisation.fromJson(Map<String, dynamic> json) =>
      _$AuthorisationFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorisationToJson(this);
}
