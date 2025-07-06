import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/erorr_handler.dart';

import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/devices/data/models/add_sub_device_home_request.dart';
import 'package:final_project/src/features/devices/data/models/device_response.dart';
import 'package:final_project/src/features/devices/data/models/sub_device_home_response.dart';
import 'package:final_project/src/features/devices/data/sources/remot_data_sources.dart';
import 'package:final_project/src/features/devices/domain/entities/add_sub_devices_home_response.dart';

import '../../domain/entities/sub_device.dart';
import '../../domain/repositories/repositories.dart';

class DevicesRepositoryImp implements DevicesRepository {
  final RemotDataSources remoteDataSource;
  DevicesRepositoryImp({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<SubDevice>>> getDevices() async {
    try {
      final response = await remoteDataSource.getSubDevice();
      return response.fold((l) => left(l), (r) => right(r));
    } catch (e) {
      return left(ErrorHandler.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, DeviceResponse>> addDevice(
      {required int subDeviceId,
      required int watPerHour,
      required String deviceName}) async {
    try {
      final response = await remoteDataSource.addDevice(
        subDeviceId: subDeviceId,
        watPerHour: watPerHour,
        deviceName: deviceName,
      );
      return response.fold((l) => left(l), (r) => right(r));
    } catch (e) {
      return left(ErrorHandler.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, AddSubDevicesHomeResponse>> addSupDeviceToHome(
      {required AddSubDeviceHomeRequest addSubDevicesHomereq}) async {
    final response = await remoteDataSource.addSupDeviceToHome(
      addSubDevicesHomereq: addSubDevicesHomereq,
    );
    return response.fold((l) => left(l), (r) => right(r));
  }

  @override
  Future<Either<Failure, SubDeviceHomeResponse>> getSubDeviceHome() async {
    final response = await remoteDataSource.getSubDeviceHome();
    return response.fold((l) => left(l), (r) => right(r));
  }
}
