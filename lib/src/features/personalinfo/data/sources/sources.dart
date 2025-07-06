import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/features/personalinfo/data/models/profile_request.dart';

import '../models/profile_response.dart';

class PersonalinfoRemoteDataSource {
  final ApiServices apiServices = sl<ApiServices>();

  Future<Either<Failure, ProfileResponse>> updateProfile({
    required String name,
    required String phone,
    required String city,
    required File image,
  }) async {
    try {
      final response = await apiServices.updateProfile(
        name,
        phone,
        city,
        image,
      );
      return Right(response);
    } on Exception catch (e) {
      return Left(ServerFailure(
        e.toString(),
      ));
    } catch (e) {
      return Left(ServerFailure(
        e.toString(),
      ));
    }
  }
}
