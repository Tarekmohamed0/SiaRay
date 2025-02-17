import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/forgot_password/data/implements/forgot_password_repo_impl.dart';

import '../../data/models/forgot_password_response.dart';
import '../repositories/forgot_password_repo.dart';

class ForgotPasswordUscase {
  final ForgotPasswordRepo repository = ForgotPasswordRepoImpl();
  Future<Either<Failure, ForgotPasswordResponse>> execute(String email) async {
    return repository.forgotPassword(email);
  }
  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
}
