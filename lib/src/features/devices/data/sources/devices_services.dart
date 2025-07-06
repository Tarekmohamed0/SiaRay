import 'package:final_project/src/core/constants/constants.dart';
import 'package:final_project/src/core/utils/dio_interceptors.dart';
import 'package:logger/web.dart';

class DevicesServices {
  final dio = DioInterceptors.createAndSetupDio();
  final String baseUrl = '${Constant.baseUrl}${Constant.getSubDevice}';
  Future<Map<String, dynamic>> getDevices() async {
    try {
      final response = await dio.get(baseUrl);
      if (response.statusCode != 200) {
        Logger().e('Error: ${response.statusCode} - ${response.statusMessage}');
      }
      return Map<String, dynamic>.from(response.data);
    } catch (e) {
      throw Exception('Failed to load devices: $e');
    }
  }
}
