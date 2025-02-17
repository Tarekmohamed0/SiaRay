import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_project/src/core/error/error.dart';

import '../../data/models/forgot_password_response.dart';

abstract class ForgotPasswordRepo {
  // Future<User> getUser(String userId);
  Future<Either<Failure, ForgotPasswordResponse>> forgotPassword(String email);
}
