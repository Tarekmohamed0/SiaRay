import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/resetpassword/data/models/reset_password_response.dart';

import '../repositories/reset_password_repo.dart';

class ResetPasswordUscase {
  final ResetPasswordRepo repository;

  ResetPasswordUscase({required this.repository});
  Future<Either<Failure, ResetPasswordResponse>> execute({
    required String email,
    required String password,
    required String passwordConfirmation,
    required String token,
  }) {
    return repository.resetPassword(
      email: email,
      password: password,
      passwordConfirmation: passwordConfirmation,
      token: token,
    );
  }
  // Future<Either<Failure, ResetPasswordResponse>> execute({
  //   required String email,
  //   required String password,
  //   required String passwordConfirmation,
  //   required String token,
  // }) {
  //   return repository.resetPassword(
  //     email: email,
  //     password: password,
  //     passwordConfirmation: passwordConfirmation,
  //     token: token,
  //   );
  //
}
// Future<User> execute(String userId) async {
//   return userRepository.getUser(userId);
// }
