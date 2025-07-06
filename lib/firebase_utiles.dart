import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logger/logger.dart';

class FirebaseUtiles {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  Future<String?> getToken() async {
    String? token = await _firebaseMessaging.getToken();
    Logger().i("Firebase Token: $token");
    if (token == null) {
      Logger().e("Failed to get Firebase token");
      return null;
    }
    return token;
  }
}
