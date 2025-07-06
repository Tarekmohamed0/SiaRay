import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/devices/domain/entities/sub_device.dart';
import 'package:final_project/src/features/devices/domain/repositories/repositories.dart';

import '../../data/models/sub_devices/subdevice.dart';

class GetSubDeviceUscase {
  final DevicesRepository repository;

  GetSubDeviceUscase(this.repository);

  Future<Either<Failure, List<SubDevice>>> call() async {
    return await repository.getDevices();
  }
}
