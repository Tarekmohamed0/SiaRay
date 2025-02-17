part of 'resetpassword_cubit.dart';

abstract class ResetpasswordState extends Equatable {
  const ResetpasswordState();

  @override
  List<Object> get props => [];
}

class ResetpasswordInitial extends ResetpasswordState {}

class ResetpasswordLoading extends ResetpasswordState {}

class ResetpasswordSuccess extends ResetpasswordState {
  final ResetPasswordResponse response;

  const ResetpasswordSuccess(this.response);

  @override
  List<Object> get props => [response];
}

class ResetpasswordFailed extends ResetpasswordState {
  final String message;

  const ResetpasswordFailed(this.message);

  @override
  List<Object> get props => [message];
}
