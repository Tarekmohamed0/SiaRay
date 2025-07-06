import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/home/data/models/batteries/energy_reading_response.dart';
import 'package:final_project/src/features/home/domain/repositories/get_batteries_repo.dart';

class GetEnergyReadingUsecase {
  final HomeRepository repository;

  GetEnergyReadingUsecase(this.repository);

  Future<Either<Failure, EnergyReadingResponse>> call() async {
    return await repository.getEnergyReadings();
  }
}
