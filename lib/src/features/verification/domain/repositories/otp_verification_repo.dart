import 'package:dartz/dartz.dart';

import '../../../../core/error/error.dart';
import '../../data/models/otp_verification_response.dart';

abstract class OtpVerificationRepo {
  // Future<User> getUser(String userId);
  Future<Either<Failure, OtpVerificationResponse>> otpVerification(
      {required String email, required String token});
}
