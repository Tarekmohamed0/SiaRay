import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';

import '../../../signup/data/models/user_model.dart';
import '../repositories/signin_repo.dart';

class SigninUsecase {
  final SigninRepo signInrepository;

  SigninUsecase({required this.signInrepository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }

  Future<Either<Failure, UserModel>> execute(
      String email, String password) async {
    return signInrepository.signIn(email, password);
  }
}
