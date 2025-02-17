import 'package:dio/dio.dart';
import 'package:final_project/src/core/utils/shared/shared_prefs.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioInterceptors {
  static Dio createAndSetupDio() {
    final dio = Dio();
    final token = SharedPreferencesHelper.getString('auth_token') ?? '';
    dio.options.connectTimeout = Duration(seconds: 900); //5s
    dio.options.receiveTimeout = Duration(minutes: 1);
    dio.options.headers['Authorization'] = 'Bearer $token';
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: true));
    return dio;
  }
}
