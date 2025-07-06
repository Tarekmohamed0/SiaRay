import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';

import '../../data/models/profile_response.dart';

abstract class PersonalinfoRepository {
  Future<Either<Failure, ProfileResponse>> updateProfile({
    required String name,
    required String phone,
    required String city,
    required File image,
  });
}
