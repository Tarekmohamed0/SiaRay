import 'package:json_annotation/json_annotation.dart';
part 'auth.g.dart';

@JsonSerializable()
class Authorisation {
  final String? token;
  final String? type;

  const Authorisation({
    this.token,
    this.type,
  });

  factory Authorisation.fromJson(Map<String, dynamic> json) =>
      _$AuthorisationFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorisationToJson(this);
}
