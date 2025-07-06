part of 'personalinfo_bloc.dart';

@freezed
class PersonalinfoState with _$PersonalinfoState {
  const factory PersonalinfoState.initial() = _Initial;
  const factory PersonalinfoState.loading() = Loading;
  const factory PersonalinfoState.loaded({
    required ProfileResponse profileResponse,
  }) = Loaded;
  const factory PersonalinfoState.error(String message) = Error;
}
