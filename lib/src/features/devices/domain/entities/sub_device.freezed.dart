// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubDevice _$SubDeviceFromJson(Map<String, dynamic> json) {
  return _SubDevice.fromJson(json);
}

/// @nodoc
mixin _$SubDevice {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<SubSubDevice> get subsubdevices => throw _privateConstructorUsedError;

  /// Serializes this SubDevice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubDeviceCopyWith<SubDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubDeviceCopyWith<$Res> {
  factory $SubDeviceCopyWith(SubDevice value, $Res Function(SubDevice) then) =
      _$SubDeviceCopyWithImpl<$Res, SubDevice>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      List<SubSubDevice> subsubdevices});
}

/// @nodoc
class _$SubDeviceCopyWithImpl<$Res, $Val extends SubDevice>
    implements $SubDeviceCopyWith<$Res> {
  _$SubDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? subsubdevices = null,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subsubdevices: null == subsubdevices
          ? _value.subsubdevices
          : subsubdevices // ignore: cast_nullable_to_non_nullable
              as List<SubSubDevice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubDeviceImplCopyWith<$Res>
    implements $SubDeviceCopyWith<$Res> {
  factory _$$SubDeviceImplCopyWith(
          _$SubDeviceImpl value, $Res Function(_$SubDeviceImpl) then) =
      __$$SubDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      List<SubSubDevice> subsubdevices});
}

/// @nodoc
class __$$SubDeviceImplCopyWithImpl<$Res>
    extends _$SubDeviceCopyWithImpl<$Res, _$SubDeviceImpl>
    implements _$$SubDeviceImplCopyWith<$Res> {
  __$$SubDeviceImplCopyWithImpl(
      _$SubDeviceImpl _value, $Res Function(_$SubDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubDevice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? subsubdevices = null,
  }) {
    return _then(_$SubDeviceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      subsubdevices: null == subsubdevices
          ? _value._subsubdevices
          : subsubdevices // ignore: cast_nullable_to_non_nullable
              as List<SubSubDevice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubDeviceImpl implements _SubDevice {
  const _$SubDeviceImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      final List<SubSubDevice> subsubdevices = const []})
      : _subsubdevices = subsubdevices;

  factory _$SubDeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubDeviceImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final List<SubSubDevice> _subsubdevices;
  @override
  @JsonKey()
  List<SubSubDevice> get subsubdevices {
    if (_subsubdevices is EqualUnmodifiableListView) return _subsubdevices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subsubdevices);
  }

  @override
  String toString() {
    return 'SubDevice(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, subsubdevices: $subsubdevices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubDeviceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._subsubdevices, _subsubdevices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt, updatedAt,
      const DeepCollectionEquality().hash(_subsubdevices));

  /// Create a copy of SubDevice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubDeviceImplCopyWith<_$SubDeviceImpl> get copyWith =>
      __$$SubDeviceImplCopyWithImpl<_$SubDeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubDeviceImplToJson(
      this,
    );
  }
}

abstract class _SubDevice implements SubDevice {
  const factory _SubDevice(
      {required final int id,
      required final String name,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      final List<SubSubDevice> subsubdevices}) = _$SubDeviceImpl;

  factory _SubDevice.fromJson(Map<String, dynamic> json) =
      _$SubDeviceImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  List<SubSubDevice> get subsubdevices;

  /// Create a copy of SubDevice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubDeviceImplCopyWith<_$SubDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
