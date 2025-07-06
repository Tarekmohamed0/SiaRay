part of 'passwordmanager_bloc.dart';

@freezed
class PasswordmanagerEvent with _$PasswordmanagerEvent {
  const factory PasswordmanagerEvent.started() = _Started;
  const factory PasswordmanagerEvent.changePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) = _ChangePassword;
}
