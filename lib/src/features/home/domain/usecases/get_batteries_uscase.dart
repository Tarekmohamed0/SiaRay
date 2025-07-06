import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';

import '../../data/models/batteries/batteries.dart';
import '../repositories/get_batteries_repo.dart';

class GetBatteriesUscase {
  final HomeRepository repository;

  GetBatteriesUscase({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }

  Future<Either<Failure, Batteries>> execute() async {
    return await repository.getBatteries();
  }
}
