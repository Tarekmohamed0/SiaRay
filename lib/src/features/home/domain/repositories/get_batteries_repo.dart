import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/home/data/models/batteries/batteries.dart';

abstract class GetBatteriesRepo {
  // Future<User> getUser(String userId);

  Future<Either<Failure, Batteries>> getBatteries();
}
