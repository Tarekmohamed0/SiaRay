import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/devices/domain/repositories/repositories.dart';

import '../../data/models/device_response.dart';

class AddDeviceUsecase {
  final DevicesRepository repository;
  AddDeviceUsecase(this.repository);
  Future<Either<Failure, DeviceResponse>> call({
    required int subDeviceId,
    required int watPerHour,
    required String deviceName,
  }) async {
    return await repository.addDevice(
      subDeviceId: subDeviceId,
      watPerHour: watPerHour,
      deviceName: deviceName,
    );
  }
}
