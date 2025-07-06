part of 'personalinfo_bloc.dart';

@freezed
class PersonalinfoEvent with _$PersonalinfoEvent {
  const factory PersonalinfoEvent.started() = _Started;
  const factory PersonalinfoEvent.updateProfile({
    required ProfileRequest profileRequest,
  }) = UpdateProfile;
}
