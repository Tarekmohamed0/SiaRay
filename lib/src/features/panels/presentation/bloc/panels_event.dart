part of 'panels_bloc.dart';

@freezed
class PanelsEvent with _$PanelsEvent {
  const factory PanelsEvent.started() = _Started;
  const factory PanelsEvent.fetchPanels() = FetchPanels;
  const factory PanelsEvent.getDevice() = GetDevice;
  const factory PanelsEvent.toggelMode(
      {required String serial_number, required String mode}) = ToggelMode;
  const factory PanelsEvent.toggleDevice({
    required String status,
    required String serial_number,
  }) = ToggleDevice;
}
