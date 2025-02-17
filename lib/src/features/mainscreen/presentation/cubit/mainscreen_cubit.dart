import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mainscreen_state.dart';
part 'mainscreen_cubit.freezed.dart';

class MainscreenCubit extends Cubit<MainscreenState> {
  MainscreenCubit() : super(MainscreenState.initial());
}
