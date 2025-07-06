import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:final_project/src/core/error/error.dart';

import 'package:final_project/src/features/signin/data/models/logout_response.dart';

import '../../../signup/data/models/user_model.dart';
import '../sources/signin_remoteData.dart';
import '../../domain/repositories/signin_repo.dart';

class SigninRepositoryImp implements SigninRepo {
  final SigninRemoteDataSource remoteDataSource;
  SigninRepositoryImp({required this.remoteDataSource});

  @override
  Future<Either<Failure, UserModel>> signIn(
      String email, String password) async {
    try {
      final response = await remoteDataSource.signIn(email, password);
      return response.fold(
        (l) => Left(l),
        (r) {
          return Right(r);
        },
      );
    } on DioException catch (e) {
      return Left(ServerFailure(
        e.response!.data.toString(),
      ));
    }
  }

  @override
  Future<Either<Failure, LogoutResponse>> logout() async {
    try {
      final response = await remoteDataSource.logOut();
      return response.fold(
        (l) => Left(l),
        (r) {
          return Right(r);
        },
      );
    } catch (e) {
      return Left(ServerFailure(
        e.toString(),
      ));
    }

    // ... example ...
    //
    // Future<User> getUser(String userId) async {
    //     return remoteDataSource.getUser(userId);
    //   }
    // ...
  }
}
