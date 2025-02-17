import 'package:dartz/dartz.dart';

import 'package:final_project/src/core/error/error.dart';

import 'package:final_project/src/features/verification/data/models/otp_verification_response.dart';
import 'package:final_project/src/features/verification/data/sources/otp_verification_remote.dart';

import '../../domain/repositories/otp_verification_repo.dart';

class OtpVerificationRepoImpl implements OtpVerificationRepo {
  final OtpVerificationRemote otpVerificationRemote = OtpVerificationRemote();
  @override
  Future<Either<Failure, OtpVerificationResponse>> otpVerification(
      {required String email, required String token}) {
    return otpVerificationRemote.otpVerificatoin(email: email, token: token);
  }

  // ... example ...
  //
  // Future<User> getUser(String userId) async {
  //     return remoteDataSource.getUser(userId);
  //   }
  // ...
}
