part of 'devices_cubit.dart';

abstract class DevicesState extends Equatable {
  const DevicesState();

  @override
  List<Object> get props => [];
}

class DevicesInitial extends DevicesState {}

class DevicesLoading extends DevicesState {}

class DevicesLoaded extends DevicesState {
  final List<SubDevice> subdevices;

  const DevicesLoaded(this.subdevices);

  @override
  List<Object> get props => [subdevices];
}

class deviceAdded extends DevicesState {
  final DeviceResponse deviceResponse;

  const deviceAdded(this.deviceResponse);

  @override
  List<Object> get props => [deviceResponse];
}

class DeviceAddedToHome extends DevicesState {
  final AddSubDevicesHomeResponse addSubDevicesHomeResponse;

  const DeviceAddedToHome(this.addSubDevicesHomeResponse);

  @override
  List<Object> get props => [addSubDevicesHomeResponse];
}

class DevicesLoadedHome extends DevicesState {
  final SubDeviceHomeResponse subSubDevices;

  const DevicesLoadedHome(this.subSubDevices);

  @override
  List<Object> get props => [subSubDevices];
}

class DevicesError extends DevicesState {
  final String message;

  const DevicesError(this.message);

  @override
  List<Object> get props => [message];
}
