import 'package:dartz/dartz.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';

import '../../../../core/error/network_exceptions.dart';

abstract class SignupRepo {
  // Future<User> getUser(String userId);

  Future<UserModel> signUp(
      String email, String password, String name, String phone, String city);
  Future<Either> signupSobase(String email, String password, String name);
}
