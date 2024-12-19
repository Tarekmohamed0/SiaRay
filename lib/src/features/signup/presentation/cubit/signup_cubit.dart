import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';

import '../../../../core/config/config.dart';
import '../../../../core/error/network_exceptions.dart';
import '../../domain/usecases/signUp_uscase.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  // final AuthServices _authServices = sl<AuthServices>();

  // // future to signup
  // Future<void> signup({required String email, required String password}) async {
  //   emit(SignupLoading());
  //   try {
  //     await _authServices.registerWithEmailAndPassword(email, password);

  //     emit(SignupSuccess('Signup Success'));
  //     Logger().i('Signup Success');
  //   } catch (e) {
  //     emit(SignupFailed(e.toString()));
  //   }
  // }

  final SignupUseCase _signupUseCase = sl<SignupUseCase>();
  // future to signup
  Future<void> signup({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String city,
  }) async {
    emit(SignupLoading());
    try {
      final response =
          await _signupUseCase.execute(email, password, name, phone, city);
      emit(SignupSuccess(response));
      Logger().i('Signup Success');
    } on DioException catch (e) {
      emit(SignupFailed(e.message.toString()));
      Logger().e(e.message.toString());
    } on NetworkExceptions catch (e) {
      if (e.toString() == 'Exception: 401') {
        emit(SignupFailed('Email already exists'));
      } else {
        emit(SignupFailed(e.toString()));
      }
      emit(SignupFailed(e.toString()));
    }
  }

  Future<Either> signupSobase({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String city,
  }) async {
    emit(SignupLoading());
    try {
      final response = await _signupUseCase.executeSobase(
          email, password, name, phone, city);
      response.fold(
        (e) => emit(SignupFailed(e.toString())),
        (response) => emit(SignupSuccess(response)),
      );
      Logger().i('Signup Success');
      return response;
    } on DioException catch (e) {
      emit(SignupFailed(e.message.toString()));
      Logger().e(e.message.toString());
      return Left(e);
    } on NetworkExceptions catch (e) {
      if (e.toString() == 'Exception: 401') {
        emit(SignupFailed('Email already exists'));
      } else {
        emit(SignupFailed(e.toString()));
      }
      emit(SignupFailed(e.toString()));
      return Left(e);
    }
  }
}
