import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/devices/domain/entities/add_sub_devices_home_response.dart';

import '../../data/models/add_sub_device_home_request.dart';
import '../repositories/repositories.dart';

class AddDeviceHomeUsecase {
  final DevicesRepository _deviceRepository;

  AddDeviceHomeUsecase(this._deviceRepository);

  Future<Either<Failure, AddSubDevicesHomeResponse>> call(
      {required AddSubDeviceHomeRequest request}) async {
    final response = await _deviceRepository.addSupDeviceToHome(
        addSubDevicesHomereq: request);
    return response.fold(
      (l) => left(l),
      (r) => right(r),
    );
  }
}
