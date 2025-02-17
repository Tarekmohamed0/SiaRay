import 'package:dartz/dartz.dart';

import 'package:final_project/src/core/error/error.dart';

import 'package:final_project/src/features/resetpassword/data/models/reset_password_response.dart';
import 'package:final_project/src/features/resetpassword/data/sources/remote/reset_password_remote.dart';

import '../../domain/repositories/reset_password_repo.dart';

class ResetPasswordRepoImpl implements ResetPasswordRepo {
  final ResetPasswordRemote remoteDataSource = ResetPasswordRemote();
  @override
  Future<Either<Failure, ResetPasswordResponse>> resetPassword({
    required String email,
    required String password,
    required String passwordConfirmation,
    required String token,
  }) async {
    try {
      final response = await remoteDataSource.resetPassword(
          email: email,
          password: password,
          passwordConfirmation: passwordConfirmation,
          token: token);
      return response.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
