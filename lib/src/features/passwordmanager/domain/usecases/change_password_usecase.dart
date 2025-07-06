import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/passwordmanager/data/models/password_response.dart';

import '../repositories/password_manager_repo.dart';

class ChangePasswordUsecase {
  final PasswordManagerRepo repository;

  ChangePasswordUsecase({required this.repository});
  Future<Either<Failure, PasswordResponse>> call({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    final response = await repository.changePassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmPassword: confirmPassword,
    );
    return response.fold(
      (l) => Left(l),
      (r) {
        return Right(r);
      },
    );
  }
}
