import 'package:dartz/dartz.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';

import '../repositories/signUp_repo.dart';

class SignupUseCase {
  final SignupRepo repository;

  SignupUseCase({required this.repository});

  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
  Future<UserModel> execute(String email, String password, String name,
      String phone, String city) async {
    return repository.signUp(email, password, name, phone, city);
  }

  Future<Either> executeSobase(String email, String password, String name,
      String phone, String city) async {
    return repository.signupSobase(email, password, name);
  }
}
