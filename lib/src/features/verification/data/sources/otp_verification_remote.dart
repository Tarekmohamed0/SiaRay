import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/features/verification/data/models/otp_verification_response.dart';

class OtpVerificationRemote {
  // Make API call to fetch data and return object.
  // ...
  final ApiServices apiServices = sl<ApiServices>();
  Future<Either<Failure, OtpVerificationResponse>> otpVerificatoin({
    required String email,
    required String token,
  }) async {
    try {
      final response = await apiServices.OtpVerificatoin(email, token);
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
