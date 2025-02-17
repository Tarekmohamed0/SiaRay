import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/features/resetpassword/data/models/reset_password_response.dart';

import '../../../../../core/error/error.dart';

class ResetPasswordRemote {
  final ApiServices apiServices = sl<ApiServices>();

  Future<Either<Failure, ResetPasswordResponse>> resetPassword({
    required String email,
    required String password,
    required String passwordConfirmation,
    required String token,
  }) async {
    try {
      final response = await apiServices.ResetPassword(
          email, password, passwordConfirmation, token);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
