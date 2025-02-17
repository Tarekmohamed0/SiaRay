import 'package:freezed_annotation/freezed_annotation.dart';

part 'static_screen_state.freezed.dart';

@freezed
class StaticScreenState with _$StaticScreenState {
  const factory StaticScreenState.initial() = _Initial;
}
