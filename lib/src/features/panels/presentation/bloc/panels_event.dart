part of 'panels_bloc.dart';

@freezed
class PanelsEvent with _$PanelsEvent {
  const factory PanelsEvent.started() = _Started;
  const factory PanelsEvent.fetchPanels() = FetchPanels;
}
