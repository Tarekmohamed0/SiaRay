import 'package:dartz/dartz.dart';

import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/home/data/models/batteries/batteries.dart';

import '../sources/remote/get_batteries_remote.dart';
import '../../domain/repositories/get_batteries_repo.dart';

class GetBatteriesRepoImpl implements GetBatteriesRepo {
  final GetBatteriesRemote getBatteriesRemote;

  GetBatteriesRepoImpl({required this.getBatteriesRemote});

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
}
