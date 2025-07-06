import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/features/signin/data/models/logout_response.dart';
import 'package:logger/logger.dart';

import '../../../signup/data/models/user_model.dart';

class SigninRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  final ApiServices _apiServices = sl<ApiServices>();

  // future to make a post request to the server to sign in a user
  Future<Either<Failure, UserModel>> signIn(
      String email, String password) async {
    try {
      final response = await _apiServices.signIn(email, password);
      final UserModel data = response;
      Logger().i(data.toJson());
      return right(response);
    } on DioException catch (e) {
      if (e.response != null) {
        final statusCode = e.response!.statusCode;
        final status = e.response!.data['status'];
        final errorMessage = e.response!.data['message'];
        Logger().e(
            'Error error: $statusCode, Status: $status, Message: $errorMessage');
        Logger().e("this error from remote data source${e.response!.data}");
        return left(
          ServerFailure(
            errorMessage,
          ),
        );
      } else {
        return left(
          ServerFailure(
            e.message ?? 'An unknown error occurred',
          ),
        );
      }
    }
  }

  Future<Either<Failure, LogoutResponse>> logOut() async {
    try {
      final response = await _apiServices.logOut();
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(
        e.toString(),
      ));
    }
  }
}
