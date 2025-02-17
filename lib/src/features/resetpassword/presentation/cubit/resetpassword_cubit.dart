import 'package:final_project/src/features/resetpassword/data/implements/reset_password_repo_impl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/reset_password_response.dart';
import '../../domain/usecases/reset_password_uscase.dart';

part 'resetpassword_state.dart';

class ResetpasswordCubit extends Cubit<ResetpasswordState> {
  ResetpasswordCubit() : super(ResetpasswordInitial());
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final ResetPasswordUscase resetPasswordUscase = ResetPasswordUscase(
    repository: ResetPasswordRepoImpl(),
  );

  Future<void> resetPassword({
    required String email,
    required String password,
    required String passwordConfirmation,
    required String token,
  }) async {
    emit(ResetpasswordLoading());
    try {
      final response = await resetPasswordUscase.execute(
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation,
        token: token,
      );
      response.fold(
        (l) => emit(ResetpasswordFailed(l.message)),
        (r) => emit(ResetpasswordSuccess(r)),
      );
    } catch (e) {
      emit(ResetpasswordFailed(e.toString()));
    }
  }
}
