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
  SigninSuccess(this.user);
}

class SigninFailed extends SigninState {
  final String message;

  SigninFailed(this.message);
}
