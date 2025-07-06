import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_project/src/core/error/erorr_handler.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/passwordmanager/data/models/password_response.dart';

import '../sources/password_manager_remote_data_source.dart';
import '../../domain/repositories/password_manager_repo.dart';

class PasswordManagerRepoImpl implements PasswordManagerRepo {
  final PasswordManagerRemoteDataSource remoteDataSource;
  PasswordManagerRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, PasswordResponse>> changePassword(
      {required String oldPassword,
      required String newPassword,
      required String confirmPassword}) async {
    try {
      final response = await remoteDataSource.changePassword(
          oldPassword: oldPassword,
          newPassword: newPassword,
          confiremPassword: confirmPassword);
      return response.fold(
        (l) => Left(l),
        (r) {
          return Right(r);
        },
      );
    } on DioException catch (e) {
      return Left(ServerFailure(e.message.toString()));
    }
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
