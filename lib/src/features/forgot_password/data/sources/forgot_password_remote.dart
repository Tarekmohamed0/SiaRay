import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/core/services/api_services.dart';

import '../models/forgot_password_response.dart';

class ForgotPasswordRemote {
  final ApiServices apiServices = sl<ApiServices>();

  Future<Either<Failure, ForgotPasswordResponse>> forgotPassword(
      String email) async {
    try {
      final response = await apiServices.ForgotPassword(email);
      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response!.data['message']));
    }
  }
}
