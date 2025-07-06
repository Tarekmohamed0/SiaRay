import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/passwordmanager/data/models/password_response.dart';

abstract class PasswordManagerRepo {
  Future<Either<Failure, PasswordResponse>> changePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  });
}
