import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';

import '../../data/models/get_device_response.dart';
import '../repositories/panels_repo.dart';

class GetDeviceUscase {
  final PanelsRepo repository;

  GetDeviceUscase({required this.repository});

  Future<Either<Failure, GetDeviceResponse>> call() async {
    return await repository.getDevice();
  }
}
