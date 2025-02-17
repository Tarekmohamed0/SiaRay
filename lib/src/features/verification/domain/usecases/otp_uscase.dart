import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/verification/data/models/otp_verification_response.dart';

import '../repositories/otp_verification_repo.dart';

class OtpUscase {
  final OtpVerificationRepo repository;

  OtpUscase({required this.repository});

  Future<Either<Failure, OtpVerificationResponse>> execute(
      {required String email, required String token}) {
    return repository.otpVerification(email: email, token: token);
  }
  // Future<User> execute(String userId) async {
  //   return userRepository.getUser(userId);
  // }
}
