import 'dart:convert';

import 'package:equatable/equatable.dart';

class Subsubdevice extends Equatable {
  final int? id;
  final String? name;
  final int? wattPerHour;
  final String? status;
  final int? subdeviceId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Subsubdevice({
    this.id,
    this.name,
    this.wattPerHour,
    this.status,
    this.subdeviceId,
    this.createdAt,
    this.updatedAt,
  });

  factory Subsubdevice.fromMap(Map<String, dynamic> data) => Subsubdevice(
        id: data['id'] as int?,
        name: data['name'] as String?,
        wattPerHour: data['watt_per_hour'] as int?,
        status: data['status'] as String?,
        subdeviceId: data['subdevice_id'] as int?,
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'watt_per_hour': wattPerHour,
        'status': status,
        'subdevice_id': subdeviceId,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Subsubdevice].
  factory Subsubdevice.fromJson(String data) {
    return Subsubdevice.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Subsubdevice] to a JSON string.
  String toJson() => json.encode(toMap());

  Subsubdevice copyWith({
    int? id,
    String? name,
    int? wattPerHour,
    String? status,
    int? subdeviceId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Subsubdevice(
      id: id ?? this.id,
      name: name ?? this.name,
      wattPerHour: wattPerHour ?? this.wattPerHour,
      status: status ?? this.status,
      subdeviceId: subdeviceId ?? this.subdeviceId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      wattPerHour,
      status,
      subdeviceId,
      createdAt,
      updatedAt,
    ];
  }
}
