part of 'passwordmanager_bloc.dart';

@freezed
class PasswordmanagerState with _$PasswordmanagerState {
  const factory PasswordmanagerState.initial() = _Initial;
  const factory PasswordmanagerState.loading() = Loading;
  const factory PasswordmanagerState.passwordChanged(
    final PasswordResponse passwordresponse,
  ) = PasswordChanged;
  const factory PasswordmanagerState.error(String message) = Error;
}
