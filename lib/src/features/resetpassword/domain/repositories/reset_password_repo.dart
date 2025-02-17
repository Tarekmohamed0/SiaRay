import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';

import '../../data/models/reset_password_response.dart';

abstract class ResetPasswordRepo {
  // Future<User> getUser(String userId);

  Future<Either<Failure, ResetPasswordResponse>> resetPassword({
    required String email,
    required String password,
    required String passwordConfirmation,
    required String token,
  });
}
