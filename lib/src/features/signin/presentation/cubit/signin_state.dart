part of 'signin_cubit.dart';

abstract class SigninState extends Equatable {
  const SigninState();

  @override
  List<Object> get props => [];
}

class SigninInitial extends SigninState {}

class SigninLoading extends SigninState {}

class SigninSuccess extends SigninState {
  final UserModel user;
  const SigninSuccess(this.user);
}

class LogoutSuccess extends SigninState {
  final String message;
  const LogoutSuccess(this.message);
}

class LogoutFailed extends SigninState {
  final String message;
  const LogoutFailed(this.message);
}

class LogoutLoading extends SigninState {}

class SigninFailed extends SigninState {
  final String message;

  const SigninFailed(this.message);
}
