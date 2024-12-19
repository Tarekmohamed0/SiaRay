import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/services/api_services.dart';

class SignupRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...
  final ApiServices _apiServices = sl<ApiServices>();
  final Dio _dio = Dio();
  final String _baseUrl = 'https://siaray.holylands.net/api';
  final String _signupEndpoint = '/user/auth/register';
  // future to make a post request to the server to sign up a user

  Future<UserModel> signUp(String email, String password, String name,
      String phone, String city) async {
    try {
      final response = await _apiServices.register(
        name,
        email,
        password,
        password,
        phone,
        city,
      );
      Logger().i(response.toJson());
      return response;
    } on DioException catch (e) {
      Logger().e(e.message.toString());
    }
    throw Exception('Error');
  }

  Future<Either> signupSubase(
      String email, String password, String name) async {
    try {
      final response = await sl<SupabaseClient>()
          .auth
          .signUp(password: password, email: email, data: {'name': name});
      Logger().i(response);
      return Right(response);
    } on DioException catch (e) {
      Logger().e(e.message.toString());
      return Left(e.message.toString());
    }
  }
}
