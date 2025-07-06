// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'panels_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PanelsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchPanels,
    required TResult Function() getDevice,
    required TResult Function(String serial_number, String mode) toggelMode,
    required TResult Function(String status, String serial_number) toggleDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchPanels,
    TResult? Function()? getDevice,
    TResult? Function(String serial_number, String mode)? toggelMode,
    TResult? Function(String status, String serial_number)? toggleDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchPanels,
    TResult Function()? getDevice,
    TResult Function(String serial_number, String mode)? toggelMode,
    TResult Function(String status, String serial_number)? toggleDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchPanels value) fetchPanels,
    required TResult Function(GetDevice value) getDevice,
    required TResult Function(ToggelMode value) toggelMode,
    required TResult Function(ToggleDevice value) toggleDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchPanels value)? fetchPanels,
    TResult? Function(GetDevice value)? getDevice,
    TResult? Function(ToggelMode value)? toggelMode,
    TResult? Function(ToggleDevice value)? toggleDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchPanels value)? fetchPanels,
    TResult Function(GetDevice value)? getDevice,
    TResult Function(ToggelMode value)? toggelMode,
    TResult Function(ToggleDevice value)? toggleDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanelsEventCopyWith<$Res> {
  factory $PanelsEventCopyWith(
          PanelsEvent value, $Res Function(PanelsEvent) then) =
      _$PanelsEventCopyWithImpl<$Res, PanelsEvent>;
}

/// @nodoc
class _$PanelsEventCopyWithImpl<$Res, $Val extends PanelsEvent>
    implements $PanelsEventCopyWith<$Res> {
  _$PanelsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PanelsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PanelsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PanelsEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchPanels,
    required TResult Function() getDevice,
    required TResult Function(String serial_number, String mode) toggelMode,
    required TResult Function(String status, String serial_number) toggleDevice,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchPanels,
    TResult? Function()? getDevice,
    TResult? Function(String serial_number, String mode)? toggelMode,
    TResult? Function(String status, String serial_number)? toggleDevice,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchPanels,
    TResult Function()? getDevice,
    TResult Function(String serial_number, String mode)? toggelMode,
    TResult Function(String status, String serial_number)? toggleDevice,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchPanels value) fetchPanels,
    required TResult Function(GetDevice value) getDevice,
    required TResult Function(ToggelMode value) toggelMode,
    required TResult Function(ToggleDevice value) toggleDevice,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchPanels value)? fetchPanels,
    TResult? Function(GetDevice value)? getDevice,
    TResult? Function(ToggelMode value)? toggelMode,
    TResult? Function(ToggleDevice value)? toggleDevice,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchPanels value)? fetchPanels,
    TResult Function(GetDevice value)? getDevice,
    TResult Function(ToggelMode value)? toggelMode,
    TResult Function(ToggleDevice value)? toggleDevice,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PanelsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchPanelsImplCopyWith<$Res> {
  factory _$$FetchPanelsImplCopyWith(
          _$FetchPanelsImpl value, $Res Function(_$FetchPanelsImpl) then) =
      __$$FetchPanelsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPanelsImplCopyWithImpl<$Res>
    extends _$PanelsEventCopyWithImpl<$Res, _$FetchPanelsImpl>
    implements _$$FetchPanelsImplCopyWith<$Res> {
  __$$FetchPanelsImplCopyWithImpl(
      _$FetchPanelsImpl _value, $Res Function(_$FetchPanelsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchPanelsImpl with DiagnosticableTreeMixin implements FetchPanels {
  const _$FetchPanelsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsEvent.fetchPanels()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PanelsEvent.fetchPanels'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPanelsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchPanels,
    required TResult Function() getDevice,
    required TResult Function(String serial_number, String mode) toggelMode,
    required TResult Function(String status, String serial_number) toggleDevice,
  }) {
    return fetchPanels();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchPanels,
    TResult? Function()? getDevice,
    TResult? Function(String serial_number, String mode)? toggelMode,
    TResult? Function(String status, String serial_number)? toggleDevice,
  }) {
    return fetchPanels?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchPanels,
    TResult Function()? getDevice,
    TResult Function(String serial_number, String mode)? toggelMode,
    TResult Function(String status, String serial_number)? toggleDevice,
    required TResult orElse(),
  }) {
    if (fetchPanels != null) {
      return fetchPanels();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchPanels value) fetchPanels,
    required TResult Function(GetDevice value) getDevice,
    required TResult Function(ToggelMode value) toggelMode,
    required TResult Function(ToggleDevice value) toggleDevice,
  }) {
    return fetchPanels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchPanels value)? fetchPanels,
    TResult? Function(GetDevice value)? getDevice,
    TResult? Function(ToggelMode value)? toggelMode,
    TResult? Function(ToggleDevice value)? toggleDevice,
  }) {
    return fetchPanels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchPanels value)? fetchPanels,
    TResult Function(GetDevice value)? getDevice,
    TResult Function(ToggelMode value)? toggelMode,
    TResult Function(ToggleDevice value)? toggleDevice,
    required TResult orElse(),
  }) {
    if (fetchPanels != null) {
      return fetchPanels(this);
    }
    return orElse();
  }
}

abstract class FetchPanels implements PanelsEvent {
  const factory FetchPanels() = _$FetchPanelsImpl;
}

/// @nodoc
abstract class _$$GetDeviceImplCopyWith<$Res> {
  factory _$$GetDeviceImplCopyWith(
          _$GetDeviceImpl value, $Res Function(_$GetDeviceImpl) then) =
      __$$GetDeviceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDeviceImplCopyWithImpl<$Res>
    extends _$PanelsEventCopyWithImpl<$Res, _$GetDeviceImpl>
    implements _$$GetDeviceImplCopyWith<$Res> {
  __$$GetDeviceImplCopyWithImpl(
      _$GetDeviceImpl _value, $Res Function(_$GetDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetDeviceImpl with DiagnosticableTreeMixin implements GetDevice {
  const _$GetDeviceImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsEvent.getDevice()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PanelsEvent.getDevice'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDeviceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchPanels,
    required TResult Function() getDevice,
    required TResult Function(String serial_number, String mode) toggelMode,
    required TResult Function(String status, String serial_number) toggleDevice,
  }) {
    return getDevice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchPanels,
    TResult? Function()? getDevice,
    TResult? Function(String serial_number, String mode)? toggelMode,
    TResult? Function(String status, String serial_number)? toggleDevice,
  }) {
    return getDevice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchPanels,
    TResult Function()? getDevice,
    TResult Function(String serial_number, String mode)? toggelMode,
    TResult Function(String status, String serial_number)? toggleDevice,
    required TResult orElse(),
  }) {
    if (getDevice != null) {
      return getDevice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchPanels value) fetchPanels,
    required TResult Function(GetDevice value) getDevice,
    required TResult Function(ToggelMode value) toggelMode,
    required TResult Function(ToggleDevice value) toggleDevice,
  }) {
    return getDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchPanels value)? fetchPanels,
    TResult? Function(GetDevice value)? getDevice,
    TResult? Function(ToggelMode value)? toggelMode,
    TResult? Function(ToggleDevice value)? toggleDevice,
  }) {
    return getDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchPanels value)? fetchPanels,
    TResult Function(GetDevice value)? getDevice,
    TResult Function(ToggelMode value)? toggelMode,
    TResult Function(ToggleDevice value)? toggleDevice,
    required TResult orElse(),
  }) {
    if (getDevice != null) {
      return getDevice(this);
    }
    return orElse();
  }
}

abstract class GetDevice implements PanelsEvent {
  const factory GetDevice() = _$GetDeviceImpl;
}

/// @nodoc
abstract class _$$ToggelModeImplCopyWith<$Res> {
  factory _$$ToggelModeImplCopyWith(
          _$ToggelModeImpl value, $Res Function(_$ToggelModeImpl) then) =
      __$$ToggelModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String serial_number, String mode});
}

/// @nodoc
class __$$ToggelModeImplCopyWithImpl<$Res>
    extends _$PanelsEventCopyWithImpl<$Res, _$ToggelModeImpl>
    implements _$$ToggelModeImplCopyWith<$Res> {
  __$$ToggelModeImplCopyWithImpl(
      _$ToggelModeImpl _value, $Res Function(_$ToggelModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serial_number = null,
    Object? mode = null,
  }) {
    return _then(_$ToggelModeImpl(
      serial_number: null == serial_number
          ? _value.serial_number
          : serial_number // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggelModeImpl with DiagnosticableTreeMixin implements ToggelMode {
  const _$ToggelModeImpl({required this.serial_number, required this.mode});

  @override
  final String serial_number;
  @override
  final String mode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsEvent.toggelMode(serial_number: $serial_number, mode: $mode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PanelsEvent.toggelMode'))
      ..add(DiagnosticsProperty('serial_number', serial_number))
      ..add(DiagnosticsProperty('mode', mode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggelModeImpl &&
            (identical(other.serial_number, serial_number) ||
                other.serial_number == serial_number) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serial_number, mode);

  /// Create a copy of PanelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggelModeImplCopyWith<_$ToggelModeImpl> get copyWith =>
      __$$ToggelModeImplCopyWithImpl<_$ToggelModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchPanels,
    required TResult Function() getDevice,
    required TResult Function(String serial_number, String mode) toggelMode,
    required TResult Function(String status, String serial_number) toggleDevice,
  }) {
    return toggelMode(serial_number, mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchPanels,
    TResult? Function()? getDevice,
    TResult? Function(String serial_number, String mode)? toggelMode,
    TResult? Function(String status, String serial_number)? toggleDevice,
  }) {
    return toggelMode?.call(serial_number, mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchPanels,
    TResult Function()? getDevice,
    TResult Function(String serial_number, String mode)? toggelMode,
    TResult Function(String status, String serial_number)? toggleDevice,
    required TResult orElse(),
  }) {
    if (toggelMode != null) {
      return toggelMode(serial_number, mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchPanels value) fetchPanels,
    required TResult Function(GetDevice value) getDevice,
    required TResult Function(ToggelMode value) toggelMode,
    required TResult Function(ToggleDevice value) toggleDevice,
  }) {
    return toggelMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchPanels value)? fetchPanels,
    TResult? Function(GetDevice value)? getDevice,
    TResult? Function(ToggelMode value)? toggelMode,
    TResult? Function(ToggleDevice value)? toggleDevice,
  }) {
    return toggelMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchPanels value)? fetchPanels,
    TResult Function(GetDevice value)? getDevice,
    TResult Function(ToggelMode value)? toggelMode,
    TResult Function(ToggleDevice value)? toggleDevice,
    required TResult orElse(),
  }) {
    if (toggelMode != null) {
      return toggelMode(this);
    }
    return orElse();
  }
}

abstract class ToggelMode implements PanelsEvent {
  const factory ToggelMode(
      {required final String serial_number,
      required final String mode}) = _$ToggelModeImpl;

  String get serial_number;
  String get mode;

  /// Create a copy of PanelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggelModeImplCopyWith<_$ToggelModeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleDeviceImplCopyWith<$Res> {
  factory _$$ToggleDeviceImplCopyWith(
          _$ToggleDeviceImpl value, $Res Function(_$ToggleDeviceImpl) then) =
      __$$ToggleDeviceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status, String serial_number});
}

/// @nodoc
class __$$ToggleDeviceImplCopyWithImpl<$Res>
    extends _$PanelsEventCopyWithImpl<$Res, _$ToggleDeviceImpl>
    implements _$$ToggleDeviceImplCopyWith<$Res> {
  __$$ToggleDeviceImplCopyWithImpl(
      _$ToggleDeviceImpl _value, $Res Function(_$ToggleDeviceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? serial_number = null,
  }) {
    return _then(_$ToggleDeviceImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      serial_number: null == serial_number
          ? _value.serial_number
          : serial_number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleDeviceImpl with DiagnosticableTreeMixin implements ToggleDevice {
  const _$ToggleDeviceImpl({required this.status, required this.serial_number});

  @override
  final String status;
  @override
  final String serial_number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsEvent.toggleDevice(status: $status, serial_number: $serial_number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PanelsEvent.toggleDevice'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('serial_number', serial_number));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleDeviceImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.serial_number, serial_number) ||
                other.serial_number == serial_number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, serial_number);

  /// Create a copy of PanelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleDeviceImplCopyWith<_$ToggleDeviceImpl> get copyWith =>
      __$$ToggleDeviceImplCopyWithImpl<_$ToggleDeviceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchPanels,
    required TResult Function() getDevice,
    required TResult Function(String serial_number, String mode) toggelMode,
    required TResult Function(String status, String serial_number) toggleDevice,
  }) {
    return toggleDevice(status, serial_number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchPanels,
    TResult? Function()? getDevice,
    TResult? Function(String serial_number, String mode)? toggelMode,
    TResult? Function(String status, String serial_number)? toggleDevice,
  }) {
    return toggleDevice?.call(status, serial_number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchPanels,
    TResult Function()? getDevice,
    TResult Function(String serial_number, String mode)? toggelMode,
    TResult Function(String status, String serial_number)? toggleDevice,
    required TResult orElse(),
  }) {
    if (toggleDevice != null) {
      return toggleDevice(status, serial_number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchPanels value) fetchPanels,
    required TResult Function(GetDevice value) getDevice,
    required TResult Function(ToggelMode value) toggelMode,
    required TResult Function(ToggleDevice value) toggleDevice,
  }) {
    return toggleDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchPanels value)? fetchPanels,
    TResult? Function(GetDevice value)? getDevice,
    TResult? Function(ToggelMode value)? toggelMode,
    TResult? Function(ToggleDevice value)? toggleDevice,
  }) {
    return toggleDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchPanels value)? fetchPanels,
    TResult Function(GetDevice value)? getDevice,
    TResult Function(ToggelMode value)? toggelMode,
    TResult Function(ToggleDevice value)? toggleDevice,
    required TResult orElse(),
  }) {
    if (toggleDevice != null) {
      return toggleDevice(this);
    }
    return orElse();
  }
}

abstract class ToggleDevice implements PanelsEvent {
  const factory ToggleDevice(
      {required final String status,
      required final String serial_number}) = _$ToggleDeviceImpl;

  String get status;
  String get serial_number;

  /// Create a copy of PanelsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleDeviceImplCopyWith<_$ToggleDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PanelsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetDeviceResponse device) deviceLoaded,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function(String message) deviceToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GetDeviceResponse device)? deviceLoaded,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function(String message)? deviceToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetDeviceResponse device)? deviceLoaded,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function(String message)? deviceToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DeviceLoaded value) deviceLoaded,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(DeviceToggled value) deviceToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DeviceLoaded value)? deviceLoaded,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(DeviceToggled value)? deviceToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DeviceLoaded value)? deviceLoaded,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(DeviceToggled value)? deviceToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PanelsStateCopyWith<$Res> {
  factory $PanelsStateCopyWith(
          PanelsState value, $Res Function(PanelsState) then) =
      _$PanelsStateCopyWithImpl<$Res, PanelsState>;
}

/// @nodoc
class _$PanelsStateCopyWithImpl<$Res, $Val extends PanelsState>
    implements $PanelsStateCopyWith<$Res> {
  _$PanelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PanelsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PanelsState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetDeviceResponse device) deviceLoaded,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function(String message) deviceToggled,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GetDeviceResponse device)? deviceLoaded,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function(String message)? deviceToggled,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetDeviceResponse device)? deviceLoaded,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function(String message)? deviceToggled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DeviceLoaded value) deviceLoaded,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(DeviceToggled value) deviceToggled,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DeviceLoaded value)? deviceLoaded,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(DeviceToggled value)? deviceToggled,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DeviceLoaded value)? deviceLoaded,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(DeviceToggled value)? deviceToggled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PanelsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PanelsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PanelsState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetDeviceResponse device) deviceLoaded,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function(String message) deviceToggled,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GetDeviceResponse device)? deviceLoaded,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function(String message)? deviceToggled,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetDeviceResponse device)? deviceLoaded,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function(String message)? deviceToggled,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DeviceLoaded value) deviceLoaded,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(DeviceToggled value) deviceToggled,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DeviceLoaded value)? deviceLoaded,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(DeviceToggled value)? deviceToggled,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DeviceLoaded value)? deviceLoaded,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(DeviceToggled value)? deviceToggled,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PanelsState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$DeviceLoadedImplCopyWith<$Res> {
  factory _$$DeviceLoadedImplCopyWith(
          _$DeviceLoadedImpl value, $Res Function(_$DeviceLoadedImpl) then) =
      __$$DeviceLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetDeviceResponse device});
}

/// @nodoc
class __$$DeviceLoadedImplCopyWithImpl<$Res>
    extends _$PanelsStateCopyWithImpl<$Res, _$DeviceLoadedImpl>
    implements _$$DeviceLoadedImplCopyWith<$Res> {
  __$$DeviceLoadedImplCopyWithImpl(
      _$DeviceLoadedImpl _value, $Res Function(_$DeviceLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$DeviceLoadedImpl(
      null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as GetDeviceResponse,
    ));
  }
}

/// @nodoc

class _$DeviceLoadedImpl with DiagnosticableTreeMixin implements DeviceLoaded {
  const _$DeviceLoadedImpl(this.device);

  @override
  final GetDeviceResponse device;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsState.deviceLoaded(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PanelsState.deviceLoaded'))
      ..add(DiagnosticsProperty('device', device));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceLoadedImpl &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceLoadedImplCopyWith<_$DeviceLoadedImpl> get copyWith =>
      __$$DeviceLoadedImplCopyWithImpl<_$DeviceLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetDeviceResponse device) deviceLoaded,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function(String message) deviceToggled,
  }) {
    return deviceLoaded(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GetDeviceResponse device)? deviceLoaded,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function(String message)? deviceToggled,
  }) {
    return deviceLoaded?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetDeviceResponse device)? deviceLoaded,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function(String message)? deviceToggled,
    required TResult orElse(),
  }) {
    if (deviceLoaded != null) {
      return deviceLoaded(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DeviceLoaded value) deviceLoaded,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(DeviceToggled value) deviceToggled,
  }) {
    return deviceLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DeviceLoaded value)? deviceLoaded,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(DeviceToggled value)? deviceToggled,
  }) {
    return deviceLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DeviceLoaded value)? deviceLoaded,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(DeviceToggled value)? deviceToggled,
    required TResult orElse(),
  }) {
    if (deviceLoaded != null) {
      return deviceLoaded(this);
    }
    return orElse();
  }
}

abstract class DeviceLoaded implements PanelsState {
  const factory DeviceLoaded(final GetDeviceResponse device) =
      _$DeviceLoadedImpl;

  GetDeviceResponse get device;

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceLoadedImplCopyWith<_$DeviceLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PanelsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements Loaded {
  const _$LoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsState.loaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PanelsState.loaded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetDeviceResponse device) deviceLoaded,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function(String message) deviceToggled,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GetDeviceResponse device)? deviceLoaded,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function(String message)? deviceToggled,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetDeviceResponse device)? deviceLoaded,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function(String message)? deviceToggled,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DeviceLoaded value) deviceLoaded,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(DeviceToggled value) deviceToggled,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DeviceLoaded value)? deviceLoaded,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(DeviceToggled value)? deviceToggled,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DeviceLoaded value)? deviceLoaded,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(DeviceToggled value)? deviceToggled,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements PanelsState {
  const factory Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PanelsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PanelsState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetDeviceResponse device) deviceLoaded,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function(String message) deviceToggled,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GetDeviceResponse device)? deviceLoaded,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function(String message)? deviceToggled,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetDeviceResponse device)? deviceLoaded,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function(String message)? deviceToggled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DeviceLoaded value) deviceLoaded,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(DeviceToggled value) deviceToggled,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DeviceLoaded value)? deviceLoaded,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(DeviceToggled value)? deviceToggled,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DeviceLoaded value)? deviceLoaded,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(DeviceToggled value)? deviceToggled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements PanelsState {
  const factory Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataImplCopyWith<$Res> {
  factory _$$NoDataImplCopyWith(
          _$NoDataImpl value, $Res Function(_$NoDataImpl) then) =
      __$$NoDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoDataImplCopyWithImpl<$Res>
    extends _$PanelsStateCopyWithImpl<$Res, _$NoDataImpl>
    implements _$$NoDataImplCopyWith<$Res> {
  __$$NoDataImplCopyWithImpl(
      _$NoDataImpl _value, $Res Function(_$NoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoDataImpl with DiagnosticableTreeMixin implements NoData {
  const _$NoDataImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsState.noData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PanelsState.noData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetDeviceResponse device) deviceLoaded,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function(String message) deviceToggled,
  }) {
    return noData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GetDeviceResponse device)? deviceLoaded,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function(String message)? deviceToggled,
  }) {
    return noData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetDeviceResponse device)? deviceLoaded,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function(String message)? deviceToggled,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DeviceLoaded value) deviceLoaded,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(DeviceToggled value) deviceToggled,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DeviceLoaded value)? deviceLoaded,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(DeviceToggled value)? deviceToggled,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DeviceLoaded value)? deviceLoaded,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(DeviceToggled value)? deviceToggled,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoData implements PanelsState {
  const factory NoData() = _$NoDataImpl;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$PanelsStateCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoInternetImpl with DiagnosticableTreeMixin implements NoInternet {
  const _$NoInternetImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsState.noInternet()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'PanelsState.noInternet'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetDeviceResponse device) deviceLoaded,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function(String message) deviceToggled,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GetDeviceResponse device)? deviceLoaded,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function(String message)? deviceToggled,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetDeviceResponse device)? deviceLoaded,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function(String message)? deviceToggled,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DeviceLoaded value) deviceLoaded,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(DeviceToggled value) deviceToggled,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DeviceLoaded value)? deviceLoaded,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(DeviceToggled value)? deviceToggled,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DeviceLoaded value)? deviceLoaded,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(DeviceToggled value)? deviceToggled,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements PanelsState {
  const factory NoInternet() = _$NoInternetImpl;
}

/// @nodoc
abstract class _$$DeviceToggledImplCopyWith<$Res> {
  factory _$$DeviceToggledImplCopyWith(
          _$DeviceToggledImpl value, $Res Function(_$DeviceToggledImpl) then) =
      __$$DeviceToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeviceToggledImplCopyWithImpl<$Res>
    extends _$PanelsStateCopyWithImpl<$Res, _$DeviceToggledImpl>
    implements _$$DeviceToggledImplCopyWith<$Res> {
  __$$DeviceToggledImplCopyWithImpl(
      _$DeviceToggledImpl _value, $Res Function(_$DeviceToggledImpl) _then)
      : super(_value, _then);

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeviceToggledImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeviceToggledImpl
    with DiagnosticableTreeMixin
    implements DeviceToggled {
  const _$DeviceToggledImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PanelsState.deviceToggled(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PanelsState.deviceToggled'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceToggledImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceToggledImplCopyWith<_$DeviceToggledImpl> get copyWith =>
      __$$DeviceToggledImplCopyWithImpl<_$DeviceToggledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GetDeviceResponse device) deviceLoaded,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() noData,
    required TResult Function() noInternet,
    required TResult Function(String message) deviceToggled,
  }) {
    return deviceToggled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GetDeviceResponse device)? deviceLoaded,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? noData,
    TResult? Function()? noInternet,
    TResult? Function(String message)? deviceToggled,
  }) {
    return deviceToggled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GetDeviceResponse device)? deviceLoaded,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? noData,
    TResult Function()? noInternet,
    TResult Function(String message)? deviceToggled,
    required TResult orElse(),
  }) {
    if (deviceToggled != null) {
      return deviceToggled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(DeviceLoaded value) deviceLoaded,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(NoData value) noData,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(DeviceToggled value) deviceToggled,
  }) {
    return deviceToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(DeviceLoaded value)? deviceLoaded,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(NoData value)? noData,
    TResult? Function(NoInternet value)? noInternet,
    TResult? Function(DeviceToggled value)? deviceToggled,
  }) {
    return deviceToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(DeviceLoaded value)? deviceLoaded,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(NoData value)? noData,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(DeviceToggled value)? deviceToggled,
    required TResult orElse(),
  }) {
    if (deviceToggled != null) {
      return deviceToggled(this);
    }
    return orElse();
  }
}

abstract class DeviceToggled implements PanelsState {
  const factory DeviceToggled(final String message) = _$DeviceToggledImpl;

  String get message;

  /// Create a copy of PanelsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceToggledImplCopyWith<_$DeviceToggledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
