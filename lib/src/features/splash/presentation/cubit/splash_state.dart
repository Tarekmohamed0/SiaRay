// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'splash_cubit.dart';

abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

class SplashInitial extends SplashState {}

class SplashLoading extends SplashState {}

class SplashLoaded extends SplashState {}

class SplashError extends SplashState {}

class SplashNoInternet extends SplashState {}

class SplashNoData extends SplashState {}

class UserInitial extends SplashState {}

class UserLoading extends SplashState {}

class UserLoaded extends SplashState {
  final UserModel user;

  const UserLoaded(this.user);
}

class UserError extends SplashState {
  final String errorMessage;

  const UserError(
    this.errorMessage,
  );
}

class AuthAuthenticated extends SplashState {
  // final UserModel user;

  const AuthAuthenticated();
}

class AuthUnauthenticated extends SplashState {}
