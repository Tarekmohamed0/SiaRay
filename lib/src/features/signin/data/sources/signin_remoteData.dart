import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../../../signup/data/models/user_model.dart';

class SigninRemoteDataSource {
  // Make API call to fetch data and return object.
  // ...

  final Dio _dio = Dio();
  final String _baseUrl = 'https://siaray.holylands.net/api';
  final String _signinEndpoint = '/user/auth/login';

  // future to make a post request to the server to sign in a user
  Future<UserModel> signIn(String email, String password) async {
    try {
      final response = await _dio.post(
        '$_baseUrl$_signinEndpoint',
        data: {
          'email': email,
          'password': password,
        },
      );
      final UserModel data = UserModel.fromJson(response.data);
      Logger().i(data.toJson());
      return UserModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        Logger().e(e.response!.data);
      } else {
        Logger().e(e.message);
      }
      Logger().e(e);
    }
    // Return a default UserModel or throw an exception if needed
    return UserModel(); // Ensure UserModel has a default constructor or handle accordingly
  }
}
