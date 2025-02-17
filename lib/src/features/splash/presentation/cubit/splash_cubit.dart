import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../signup/data/models/user_model.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());
  // final NetworkInfo networkInfo;
  final Dio dio = Dio();

  // void checkInternetConnection() async {
  //   emit(SplashLoading());

  //   if (await networkInfo.isConnected) {
  //     await Future.delayed(const Duration(seconds: 1));
  //     emit(SplashLoaded());
  //   } else {
  //     emit(SplashNoInternet());
  //   }
  // }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('auth_token');
  }

  Future<void> checkAndFetchUserData() async {
    emit(UserLoading());

    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');

      if (token == null) {
        // No token found, navigate to login
        await Future.delayed(Duration(seconds: 2));
        emit(AuthUnauthenticated());
        return;
      }

      // Log token retrieval
      print('Token retrieved: $token');

      // Fetch user data from the API
      final response = await Dio().get(
        'https://siaray.holylands.net/api/user/auth/login',
        options: Options(
          headers: {'Authorization': 'Bearer $token'},
        ),
      );

      // Check response status code
      if (response.statusCode == 200 && response.data != null) {
        // Parse user data
        // final userData = UserModel.fromJson(response.data['user']);
        // emit(AuthAuthenticated(userData));
        Logger().i('User data: ${response.data}');
        // await Future.delayed(Duration(seconds: 5));
        emit(AuthAuthenticated());
        print('User data fetched and emitted successfully.');
      } else {
        // Token is invalid
        await _clearToken();
        emit(AuthUnauthenticated());
        print('Invalid token: Cleared and emitted unauthenticated state.');
      }
    } on DioException catch (e) {
      // Handle specific Dio errors for more insight
      await _clearToken();
      final errorMessage = e.response != null
          ? 'DioError: ${e.response?.statusCode} - ${e.response?.data}'
          : 'DioError without response: $e';
      print(errorMessage);
      emit(UserError('Failed to fetch user data: $errorMessage'));
    } catch (e) {
      // Catch unexpected errors
      await _clearToken();
      print('Unexpected error: $e');
      emit(UserError('Unexpected error occurred: $e'));
    }
  }

  Future<void> _clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token');
  }
}
