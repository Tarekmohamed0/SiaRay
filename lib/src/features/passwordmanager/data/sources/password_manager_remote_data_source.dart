import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/error/erorr_handler.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/features/passwordmanager/data/models/password_request.dart';
import 'package:final_project/src/features/passwordmanager/data/models/password_response.dart';

class PasswordManagerRemoteDataSource {
  final ApiServices apiServices = sl<ApiServices>();
  Future<Either<Failure, PasswordResponse>> changePassword(
      {required String oldPassword,
      required String newPassword,
      required String confiremPassword}) async {
    try {
      final response = await apiServices.changePassword(PasswordRequest(
          oldPassword: oldPassword,
          newPassword: newPassword,
          confirmPassword: confiremPassword));
      return Right(response);
    } on Exception catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}
