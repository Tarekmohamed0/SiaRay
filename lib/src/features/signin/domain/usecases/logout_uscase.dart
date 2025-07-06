import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/signin/data/models/logout_response.dart';
import 'package:final_project/src/features/signin/domain/repositories/signin_repo.dart';

class LogoutUscase {
  final SigninRepo signInrepository;
  LogoutUscase({required this.signInrepository});
  Future<Either<Failure, LogoutResponse>> execute() async {
    try {
      final response = await signInrepository.logout();
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
  }
}
