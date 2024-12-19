part of 'signup_cubit.dart';

abstract class SignupState extends Equatable {
  const SignupState();

  @override
  List<Object> get props => [];
}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSuccess extends SignupState {
  final UserModel userModel;
  SignupSuccess(this.userModel);
}

class SignupFailed extends SignupState {
  final String message;

  SignupFailed(
    this.message,
  );

  @override
  List<Object> get props => [message];
}
