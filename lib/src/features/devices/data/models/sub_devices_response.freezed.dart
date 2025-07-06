// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_devices_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubDevicesResponse _$SubDevicesResponseFromJson(Map<String, dynamic> json) {
  return _SubDevicesResponse.fromJson(json);
}

/// @nodoc
mixin _$SubDevicesResponse {
  List<SubDevice> get subdevices => throw _privateConstructorUsedError;

  /// Serializes this SubDevicesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubDevicesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubDevicesResponseCopyWith<SubDevicesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubDevicesResponseCopyWith<$Res> {
  factory $SubDevicesResponseCopyWith(
          SubDevicesResponse value, $Res Function(SubDevicesResponse) then) =
      _$SubDevicesResponseCopyWithImpl<$Res, SubDevicesResponse>;
  @useResult
  $Res call({List<SubDevice> subdevices});
}

/// @nodoc
class _$SubDevicesResponseCopyWithImpl<$Res, $Val extends SubDevicesResponse>
    implements $SubDevicesResponseCopyWith<$Res> {
  _$SubDevicesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubDevicesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subdevices = null,
  }) {
    return _then(_value.copyWith(
      subdevices: null == subdevices
          ? _value.subdevices
          : subdevices // ignore: cast_nullable_to_non_nullable
              as List<SubDevice>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubDevicesResponseImplCopyWith<$Res>
    implements $SubDevicesResponseCopyWith<$Res> {
  factory _$$SubDevicesResponseImplCopyWith(_$SubDevicesResponseImpl value,
          $Res Function(_$SubDevicesResponseImpl) then) =
      __$$SubDevicesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SubDevice> subdevices});
}

/// @nodoc
class __$$SubDevicesResponseImplCopyWithImpl<$Res>
    extends _$SubDevicesResponseCopyWithImpl<$Res, _$SubDevicesResponseImpl>
    implements _$$SubDevicesResponseImplCopyWith<$Res> {
  __$$SubDevicesResponseImplCopyWithImpl(_$SubDevicesResponseImpl _value,
      $Res Function(_$SubDevicesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubDevicesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subdevices = null,
  }) {
    return _then(_$SubDevicesResponseImpl(
      subdevices: null == subdevices
          ? _value._subdevices
          : subdevices // ignore: cast_nullable_to_non_nullable
              as List<SubDevice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubDevicesResponseImpl implements _SubDevicesResponse {
  const _$SubDevicesResponseImpl({required final List<SubDevice> subdevices})
      : _subdevices = subdevices;

  factory _$SubDevicesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubDevicesResponseImplFromJson(json);

  final List<SubDevice> _subdevices;
  @override
  List<SubDevice> get subdevices {
    if (_subdevices is EqualUnmodifiableListView) return _subdevices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subdevices);
  }

  @override
  String toString() {
    return 'SubDevicesResponse(subdevices: $subdevices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubDevicesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._subdevices, _subdevices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_subdevices));

  /// Create a copy of SubDevicesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubDevicesResponseImplCopyWith<_$SubDevicesResponseImpl> get copyWith =>
      __$$SubDevicesResponseImplCopyWithImpl<_$SubDevicesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubDevicesResponseImplToJson(
      this,
    );
  }
}

abstract class _SubDevicesResponse implements SubDevicesResponse {
  const factory _SubDevicesResponse(
      {required final List<SubDevice> subdevices}) = _$SubDevicesResponseImpl;

  factory _SubDevicesResponse.fromJson(Map<String, dynamic> json) =
      _$SubDevicesResponseImpl.fromJson;

  @override
  List<SubDevice> get subdevices;

  /// Create a copy of SubDevicesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubDevicesResponseImplCopyWith<_$SubDevicesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
