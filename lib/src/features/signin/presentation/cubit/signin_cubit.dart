import 'package:dio/dio.dart';
import 'package:final_project/src/features/signin/domain/usecases/signin_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';

import '../../../../core/config/config.dart';
import '../../../signup/data/models/user_model.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());
  // future to signin
  // Future<void> signin({required String email, required String password}) async {
  //   emit(SigninLoading());
  //   try {
  //     final user =
  //         await _authServices.signInWithEmailAndPassword(email, password);

  //     emit(SigninSuccess('Signin Success'));
  //     Logger().i(user!.uid.toString());
  //   } catch (e) {
  //     emit(SigninFailed(e.toString()));
  //   }
  // }

  // future to signin
  Future<void> signin({required String email, required String password}) async {
    emit(SigninLoading());
    try {
      final response = await sl<SigninUsecase>().execute(email, password);
      if (response.authorisation!.token != null) {
        emit(SigninSuccess(response));
        Logger().i('Signin Success');
      } else if (response.status != null) {
        emit(SigninFailed(response.message.toString()));
      }
    } on DioException catch (e) {
      emit(SigninFailed(e.toString()));
    }
  }
}
