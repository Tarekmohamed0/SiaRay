part of 'panels_bloc.dart';

@freezed
class PanelsState with _$PanelsState {
  const factory PanelsState.initial() = _Initial;
  const factory PanelsState.loading() = Loading;
  const factory PanelsState.deviceLoaded(GetDeviceResponse device) =
      DeviceLoaded;
  const factory PanelsState.loaded() = Loaded;

  const factory PanelsState.error(String message) = Error;

  const factory PanelsState.noData() = NoData;

  const factory PanelsState.noInternet() = NoInternet;
  const factory PanelsState.deviceToggled(String message) = DeviceToggled;
}
