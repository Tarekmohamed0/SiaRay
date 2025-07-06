part of 'battery_bloc.dart';

@freezed
class BatteryEvent with _$BatteryEvent {
  const factory BatteryEvent.started() = _Started;
}
