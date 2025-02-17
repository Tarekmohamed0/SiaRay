import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/forgot_password_response.dart';
import '../../domain/usecases/forgot_password_uscase.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());
  final TextEditingController emailController = TextEditingController();
  final ForgotPasswordUscase forgotPasswordUscase = ForgotPasswordUscase();
  Future<void> forgotPassword({required String email}) async {
    emit(ForgotPasswordLoading());
    final result = await forgotPasswordUscase.execute(email);
    result.fold(
      (failure) => emit(ForgotPasswordError(failure.message)),
      (response) => emit(ForgotPasswordSuccess(response)),
    );
  }
}
