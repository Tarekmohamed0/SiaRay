import 'package:dartz/dartz.dart';

import 'package:dio/src/response.dart';

import 'package:final_project/src/core/error/error.dart';

import '../models/forgot_password_response.dart';
import '../sources/forgot_password_remote.dart';
import '../../domain/repositories/forgot_password_repo.dart';

class ForgotPasswordRepoImpl implements ForgotPasswordRepo {
  final ForgotPasswordRemote remoteDataSource = ForgotPasswordRemote();

  @override
  Future<Either<Failure, ForgotPasswordResponse>> forgotPassword(String email) {
    return remoteDataSource.forgotPassword(email);
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
