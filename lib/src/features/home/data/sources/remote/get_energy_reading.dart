import 'package:dartz/dartz.dart';
import 'package:final_project/src/features/home/data/models/batteries/energy_reading_response.dart';

import '../../../../../core/error/erorr_handler.dart';
import '../../../../../core/error/error.dart';
import '../../../../../core/services/api_services.dart';

class GetEnergyReading {
  final ApiServices apiServices;

  GetEnergyReading(this.apiServices);

  Future<Either<Failure, EnergyReadingResponse>> getEnergyReading() async {
    try {
      final energyReading = await apiServices.getEnergyReadings();
      return Right(energyReading);
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}
