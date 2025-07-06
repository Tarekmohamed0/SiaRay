// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_sub_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubSubDevice _$SubSubDeviceFromJson(Map<String, dynamic> json) {
  return _SubSubDevice.fromJson(json);
}

/// @nodoc
mixin _$SubSubDevice {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'watt_per_hour')
  int get wattPerHour => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_device')
  String get hasDevice => throw _privateConstructorUsedError;
  @JsonKey(name: 'subdevice_id')
  int get subdeviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SubSubDevice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubSubDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubSubDeviceCopyWith<SubSubDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubSubDeviceCopyWith<$Res> {
  factory $SubSubDeviceCopyWith(
          SubSubDevice value, $Res Function(SubSubDevice) then) =
      _$SubSubDeviceCopyWithImpl<$Res, SubSubDevice>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'watt_per_hour') int wattPerHour,
      String status,
      @JsonKey(name: 'has_device') String hasDevice,
      @JsonKey(name: 'subdevice_id') int subdeviceId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$SubSubDeviceCopyWithImpl<$Res, $Val extends SubSubDevice>
    implements $SubSubDeviceCopyWith<$Res> {
  _$SubSubDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubSubDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? wattPerHour = null,
    Object? status = null,
    Object? hasDevice = null,
    Object? subdeviceId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wattPerHour: null == wattPerHour
          ? _value.wattPerHour
          : wattPerHour // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      hasDevice: null == hasDevice
          ? _value.hasDevice
          : hasDevice // ignore: cast_nullable_to_non_nullable
              as String,
      subdeviceId: null == subdeviceId
          ? _value.subdeviceId
          : subdeviceId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubSubDeviceImplCopyWith<$Res>
    implements $SubSubDeviceCopyWith<$Res> {
  factory _$$SubSubDeviceImplCopyWith(
          _$SubSubDeviceImpl value, $Res Function(_$SubSubDeviceImpl) then) =
      __$$SubSubDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'watt_per_hour') int wattPerHour,
      String status,
      @JsonKey(name: 'has_device') String hasDevice,
      @JsonKey(name: 'subdevice_id') int subdeviceId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$SubSubDeviceImplCopyWithImpl<$Res>
    extends _$SubSubDeviceCopyWithImpl<$Res, _$SubSubDeviceImpl>
    implements _$$SubSubDeviceImplCopyWith<$Res> {
  __$$SubSubDeviceImplCopyWithImpl(
      _$SubSubDeviceImpl _value, $Res Function(_$SubSubDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubSubDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? wattPerHour = null,
    Object? status = null,
    Object? hasDevice = null,
    Object? subdeviceId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SubSubDeviceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wattPerHour: null == wattPerHour
          ? _value.wattPerHour
          : wattPerHour // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      hasDevice: null == hasDevice
          ? _value.hasDevice
          : hasDevice // ignore: cast_nullable_to_non_nullable
              as String,
      subdeviceId: null == subdeviceId
          ? _value.subdeviceId
          : subdeviceId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubSubDeviceImpl implements _SubSubDevice {
  const _$SubSubDeviceImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'watt_per_hour') required this.wattPerHour,
      required this.status,
      @JsonKey(name: 'has_device') required this.hasDevice,
      @JsonKey(name: 'subdevice_id') required this.subdeviceId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$SubSubDeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubSubDeviceImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'watt_per_hour')
  final int wattPerHour;
  @override
  final String status;
  @override
  @JsonKey(name: 'has_device')
  final String hasDevice;
  @override
  @JsonKey(name: 'subdevice_id')
  final int subdeviceId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SubSubDevice(id: $id, name: $name, wattPerHour: $wattPerHour, status: $status, hasDevice: $hasDevice, subdeviceId: $subdeviceId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubSubDeviceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.wattPerHour, wattPerHour) ||
                other.wattPerHour == wattPerHour) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasDevice, hasDevice) ||
                other.hasDevice == hasDevice) &&
            (identical(other.subdeviceId, subdeviceId) ||
                other.subdeviceId == subdeviceId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, wattPerHour, status,
      hasDevice, subdeviceId, createdAt, updatedAt);

  /// Create a copy of SubSubDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubSubDeviceImplCopyWith<_$SubSubDeviceImpl> get copyWith =>
      __$$SubSubDeviceImplCopyWithImpl<_$SubSubDeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubSubDeviceImplToJson(
      this,
    );
  }
}

abstract class _SubSubDevice implements SubSubDevice {
  const factory _SubSubDevice(
          {required final int id,
          required final String name,
          @JsonKey(name: 'watt_per_hour') required final int wattPerHour,
          required final String status,
          @JsonKey(name: 'has_device') required final String hasDevice,
          @JsonKey(name: 'subdevice_id') required final int subdeviceId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$SubSubDeviceImpl;

  factory _SubSubDevice.fromJson(Map<String, dynamic> json) =
      _$SubSubDeviceImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'watt_per_hour')
  int get wattPerHour;
  @override
  String get status;
  @override
  @JsonKey(name: 'has_device')
  String get hasDevice;
  @override
  @JsonKey(name: 'subdevice_id')
  int get subdeviceId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// Create a copy of SubSubDevice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubSubDeviceImplCopyWith<_$SubSubDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
