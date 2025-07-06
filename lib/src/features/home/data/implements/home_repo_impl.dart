import 'package:dartz/dartz.dart';

import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/home/data/models/batteries/batteries.dart';
import 'package:final_project/src/features/home/data/models/batteries/energy_reading_response.dart';
import 'package:final_project/src/features/home/data/sources/remote/get_energy_reading.dart';

import '../sources/remote/get_batteries_remote.dart';
import '../../domain/repositories/get_batteries_repo.dart';

class HomeRepoImpl implements HomeRepository {
  final GetBatteriesRemote getBatteriesRemote;
  final GetEnergyReading getEnergyReading;
  HomeRepoImpl(
      {required this.getBatteriesRemote, required this.getEnergyReading});

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...

  // ignore: empty_constructor_bodies
  @override
  Future<Either<Failure, Batteries>> getBatteries() async {
    return await getBatteriesRemote.getBatteries();
  }

  @override
  Future<Either<Failure, EnergyReadingResponse>> getEnergyReadings() async {
    return await getEnergyReading.getEnergyReading();
  }
}
