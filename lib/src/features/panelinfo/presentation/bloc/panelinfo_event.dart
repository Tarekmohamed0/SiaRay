part of 'panelinfo_bloc.dart';

@freezed
class PanelinfoEvent with _$PanelinfoEvent {
  const factory PanelinfoEvent.started() = _Started;

  const factory PanelinfoEvent.getPanelData() = GetPanelData;
}
