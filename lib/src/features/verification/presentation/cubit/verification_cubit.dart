import 'package:final_project/src/features/verification/data/implements/otp_verification_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/otp_verification_response.dart';
import '../../domain/usecases/otp_uscase.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(VerificationInitial());

  OtpUscase otpUscase = OtpUscase(
    repository: OtpVerificationRepoImpl(),
  );

  Future<void> otpVerification(
      {required String email, required String token}) async {
    emit(VerificationLoading());
    final result = await otpUscase.execute(email: email, token: token);
    result.fold(
      (failure) => emit(VerificationError(failure.message)),
      (response) => emit(VerificationSuccess(response)),
    );
  }
}
