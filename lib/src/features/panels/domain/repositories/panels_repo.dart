import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/panels/data/models/get_device_response.dart';

abstract class PanelsRepo {
  Future<Either<Failure, GetDeviceResponse>> getDevice();
  Future<Either<Failure, String>> toggleDevice({
    required String status,
    required String serial_number,
  });
  Future<Either<Failure, String>> toggelMode({
    required String serialNumber,
    required String mode,
  });
}
