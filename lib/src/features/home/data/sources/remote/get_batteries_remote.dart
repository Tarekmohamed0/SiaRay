import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/features/home/data/models/batteries/batteries.dart';

import '../../../../../core/error/erorr_handler.dart';

class GetBatteriesRemote {
  final ApiServices apiServices;

  GetBatteriesRemote(this.apiServices);

  Future<Either<Failure, Batteries>> getBatteries() async {
    try {
      final batteries = await apiServices.getBatteries();
      return Right(batteries);
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}
