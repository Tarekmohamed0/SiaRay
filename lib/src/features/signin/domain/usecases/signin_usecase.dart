import '../../../signup/data/models/user_model.dart';
import '../repositories/signin_repo.dart';

class SigninUsecase {
  final SigninRepo signInrepository;

  SigninUsecase({required this.signInrepository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }

  Future<UserModel> execute(String email, String password) async {
    return signInrepository.signIn(email, password);
  }
}
