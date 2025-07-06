import 'dart:io';

import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/features/personalinfo/data/implements/implements.dart';
import 'package:final_project/src/features/personalinfo/domain/repositories/repositories.dart';
import 'package:final_project/src/features/profile/domain/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/profile_request.dart';
import '../../data/models/profile_response.dart';
import '../../domain/usecases/update_profile_usecase.dart';

part 'personalinfo_event.dart';
part 'personalinfo_state.dart';
part 'personalinfo_bloc.freezed.dart';

class PersonalinfoBloc extends Bloc<PersonalinfoEvent, PersonalinfoState> {
  File? image;
  PersonalinfoBloc() : super(PersonalinfoState.initial()) {
    final UpdateProfileUsecase updateProfileUsecase =
        UpdateProfileUsecase(repository: sl<PersonalinfoRepository>());

    Future<void> updateProfile(UpdateProfile event, Emitter emit) async {
      emit(PersonalinfoState.loading());
      try {
        // Simulate a successful response
        final response = await updateProfileUsecase.execute(
          name: event.profileRequest.name ?? '',
          phone: event.profileRequest.phone ?? '',
          city: event.profileRequest.city ?? '',
          image: image ?? File(''),
        );
        return response.fold(
          (l) {
            emit(PersonalinfoState.error(l.message));
            return;
          },
          (r) {
            emit(PersonalinfoState.loaded(profileResponse: r));
            return;
          },
        );
      } catch (e) {
        emit(PersonalinfoState.error(e.toString()));
      }
    }

    on<UpdateProfile>(updateProfile);
  }
}
