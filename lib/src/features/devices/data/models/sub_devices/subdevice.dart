import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

import 'subsubdevice.dart';
part 'subdevice.g.dart';

@JsonSerializable()
class Subdevice {
  final int? id;
  final String? name;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<Subsubdevice>? subsubdevices;

  const Subdevice({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
    this.subsubdevices,
  });

  factory Subdevice.fromJson(Map<String, dynamic> json) =>
      _$SubdeviceFromJson(json);

  Map<String, dynamic> toJson() => _$SubdeviceToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Subdevice &&
        other.id == id &&
        other.name == name &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.subsubdevices == subsubdevices;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        subsubdevices.hashCode;
  }

//   factory Subdevice.fromMap(Map<String, dynamic> data) => Subdevice(
//         id: data['id'] as int?,
//         name: data['name'] as String?,
//         createdAt: data['created_at'] == null
//             ? null
//             : DateTime.parse(data['created_at'] as String),
//         updatedAt: data['updated_at'] == null
//             ? null
//             : DateTime.parse(data['updated_at'] as String),
//         subsubdevices: (data['subsubdevices'] as List<dynamic>?)
//             ?.map((e) => Subsubdevice.fromMap(e as Map<String, dynamic>))
//             .toList(),
//       );

//   Map<String, dynamic> toMap() => {
//         'id': id,
//         'name': name,
//         'created_at': createdAt?.toIso8601String(),
//         'updated_at': updatedAt?.toIso8601String(),
//         'subsubdevices': subsubdevices?.map((e) => e.toMap()).toList(),
//       };

//   /// `dart:convert`
//   ///
//   /// Parses the string and returns the resulting Json object as [Subdevice].
//   factory Subdevice.fromJson(String data) {
//     return Subdevice.fromMap(json.decode(data) as Map<String, dynamic>);
//   }

//   /// `dart:convert`
//   ///
//   /// Converts [Subdevice] to a JSON string.
//   String toJson() => json.encode(toMap());

//   Subdevice copyWith({
//     int? id,
//     String? name,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     List<Subsubdevice>? subsubdevices,
//   }) {
//     return Subdevice(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//       subsubdevices: subsubdevices ?? this.subsubdevices,
//     );
//   }

//   @override
//   List<Object?> get props {
//     return [
//       id,
//       name,
//       createdAt,
//       updatedAt,
//       subsubdevices,
//     ];
//   }
// }
}
