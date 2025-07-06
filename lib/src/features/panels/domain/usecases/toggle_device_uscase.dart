import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/features/panels/domain/repositories/panels_repo.dart';

class ToggleDeviceUscase {
  final PanelsRepo repository;

  ToggleDeviceUscase({required this.repository});

  Future<Either<Failure, String>> call({
    required String status,
    required String serial_number,
  }) async {
    return await repository.toggleDevice(
        status: status, serial_number: serial_number);
  }
}
