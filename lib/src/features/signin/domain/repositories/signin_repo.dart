import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/signin/data/models/logout_response.dart';

import '../../../signup/data/models/user_model.dart';

abstract class SigninRepo {
  // Future<User> getUser(String userId);
  Future<Either<Failure, UserModel>> signIn(String email, String password);
  Future<Either<Failure, LogoutResponse>> logout();
}
