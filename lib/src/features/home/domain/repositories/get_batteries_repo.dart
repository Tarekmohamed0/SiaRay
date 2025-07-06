import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/home/data/models/batteries/batteries.dart';
import 'package:final_project/src/features/home/data/models/batteries/energy_reading_response.dart';

abstract class HomeRepository {
  // Future<User> getUser(String userId);

  Future<Either<Failure, Batteries>> getBatteries();
  Future<Either<Failure, EnergyReadingResponse>> getEnergyReadings();
}
