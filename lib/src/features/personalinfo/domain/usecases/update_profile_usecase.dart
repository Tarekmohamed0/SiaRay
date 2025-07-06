import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/personalinfo/data/models/profile_response.dart';
import 'package:final_project/src/features/personalinfo/domain/repositories/repositories.dart';

import '../../../profile/domain/repositories/repositories.dart';

class UpdateProfileUsecase {
  final PersonalinfoRepository repository;

  UpdateProfileUsecase({required this.repository});

  Future<Either<Failure, ProfileResponse>> execute({
    required String name,
    required String phone,
    required String city,
    required File image,
  }) async {
    try {
      final response = await repository.updateProfile(
        name: name,
        phone: phone,
        city: city,
        image: image,
      );
      return response.fold(
        (l) => Left(l),
        (r) {
          return Right(r);
        },
      );
    } catch (e) {
      return Left(ServerFailure(
        e.toString(),
      ));
    }
  }
}
