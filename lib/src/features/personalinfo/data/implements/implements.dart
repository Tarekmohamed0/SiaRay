import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';

import '../models/profile_response.dart';
import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class PersonalinfoRepositoryImp implements PersonalinfoRepository {
  final PersonalinfoRemoteDataSource remoteDataSource;
  PersonalinfoRepositoryImp({required this.remoteDataSource});

  @override
  Future<Either<Failure, ProfileResponse>> updateProfile(
      {required String name,
      required String phone,
      required String city,
      required File image}) async {
    try {
      final response = await remoteDataSource.updateProfile(
          name: name, phone: phone, city: city, image: image);
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
