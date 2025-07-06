import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/devices/data/models/device_response.dart';
import 'package:final_project/src/features/devices/domain/entities/add_sub_devices_home_response.dart';

import '../../data/models/add_sub_device_home_request.dart';
import '../../data/models/sub_device_home_response.dart';
import '../../data/models/sub_devices/subdevice.dart';
import '../entities/sub_device.dart';

abstract class DevicesRepository {
  Future<Either<Failure, List<SubDevice>>> getDevices();
  Future<Either<Failure, SubDeviceHomeResponse>> getSubDeviceHome();
  Future<Either<Failure, DeviceResponse>> addDevice({
    required int subDeviceId,
    required int watPerHour,
    required String deviceName,
  });
  Future<Either<Failure, AddSubDevicesHomeResponse>> addSupDeviceToHome({
    required AddSubDeviceHomeRequest addSubDevicesHomereq,
  });
}
