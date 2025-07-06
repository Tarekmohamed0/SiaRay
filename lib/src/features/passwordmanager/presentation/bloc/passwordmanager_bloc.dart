import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/features/passwordmanager/data/models/password_response.dart';
import 'package:final_project/src/features/passwordmanager/domain/usecases/change_password_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'passwordmanager_event.dart';
part 'passwordmanager_state.dart';
part 'passwordmanager_bloc.freezed.dart';

class PasswordmanagerBloc
    extends Bloc<PasswordmanagerEvent, PasswordmanagerState> {
  PasswordmanagerBloc() : super(PasswordmanagerState.initial()) {
    final ChangePasswordUsecase changePasswordUsecase =
        sl<ChangePasswordUsecase>();
    Future<void> changePassword(_ChangePassword event, Emitter emit) async {
      emit(PasswordmanagerState.loading());
      try {
        final response = await changePasswordUsecase.call(
          oldPassword: event.oldPassword,
          newPassword: event.newPassword,
          confirmPassword: event.confirmPassword,
        );
        response.fold(
          (failure) {
            emit(PasswordmanagerState.error(failure.message));
          },
          (success) {
            emit(PasswordmanagerState.passwordChanged(
              success,
            ));
          },
        );
      } catch (e) {
        emit(PasswordmanagerState.error('Failed to change password'));
      }
    }

    on<_ChangePassword>(changePassword);
  }
}
