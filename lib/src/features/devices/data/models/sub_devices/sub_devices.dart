import 'package:equatable/equatable.dart';
import 'package:final_project/src/features/devices/data/models/sub_devices/subdevice.dart';
import 'package:json_annotation/json_annotation.dart';
part 'sub_devices.g.dart';

@JsonSerializable()
class SubDevices {
  final List<Subdevice>? subdevices;

  const SubDevices({this.subdevices});

  factory SubDevices.fromJson(Map<String, dynamic> json) =>
      _$SubDevicesFromJson(json);

  Map<String, dynamic> toJson() => _$SubDevicesToJson(this);

  // factory SubDevices.fromMap(Map<String, dynamic> data) => SubDevices(
  //       subdevices: (data['subdevices'] as List<dynamic>?)
  //           ?.map((e) => Subdevice.fromMap(e as Map<String, dynamic>))
  //           .toList(),
  //     );

  // Map<String, dynamic> toMap() => {
  //       'subdevices': subdevices?.map((e) => e.toMap()).toList(),
  //     };

  // /// `dart:convert`
  // ///
  // /// Parses the string and returns the resulting Json object as [SubDevices].
  // factory SubDevices.fromJson(String data) {
  //   return SubDevices.fromMap(json.decode(data) as Map<String, dynamic>);
  // }

  // /// `dart:convert`
  // ///
  // /// Converts [SubDevices] to a JSON string.
  // String toJson() => json.encode(toMap());

  // SubDevices copyWith({
  //   List<Subdevice>? subdevices,
  // }) {
  //   return SubDevices(
  //     subdevices: subdevices ?? this.subdevices,
  //   );
  // }

  // @override
  // List<Object?> get props => [subdevices];
}
