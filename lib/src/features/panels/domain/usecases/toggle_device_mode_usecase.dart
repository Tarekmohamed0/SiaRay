import 'package:dartz/dartz.dart';

import '../../../../core/error/error.dart';
import '../repositories/panels_repo.dart';

class ToggleDeviceModeUsecase {
  final PanelsRepo _panelsRepo;

  ToggleDeviceModeUsecase(this._panelsRepo);

  Future<Either<Failure, String>> call({
    required String serialNumber,
    required String mode,
  }) {
    return _panelsRepo.toggelMode(
      serialNumber: serialNumber,
      mode: mode,
    );
  }
}
