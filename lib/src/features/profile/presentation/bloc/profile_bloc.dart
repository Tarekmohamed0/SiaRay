import 'dart:io';

import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/features/personalinfo/data/models/profile_request.dart';
import 'package:final_project/src/features/profile/domain/repositories/repositories.dart';
import 'package:final_project/src/features/personalinfo/domain/usecases/update_profile_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../personalinfo/data/models/profile_response.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial());
}
