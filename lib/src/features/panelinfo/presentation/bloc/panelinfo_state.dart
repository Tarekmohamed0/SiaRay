part of 'panelinfo_bloc.dart';

@freezed
class PanelinfoState with _$PanelinfoState {
  const factory PanelinfoState.initial() = _Initial;

  const factory PanelinfoState.loading() = Loading;

  const factory PanelinfoState.loaded() = Loaded;

  const factory PanelinfoState.error() = Error;
}
