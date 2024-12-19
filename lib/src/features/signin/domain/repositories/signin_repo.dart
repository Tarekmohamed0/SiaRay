import '../../../signup/data/models/user_model.dart';

abstract class SigninRepo {
  // Future<User> getUser(String userId);
  Future<UserModel> signIn(String email, String password);
}
