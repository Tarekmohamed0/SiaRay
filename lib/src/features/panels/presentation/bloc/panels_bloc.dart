import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'panels_event.dart';
part 'panels_state.dart';
part 'panels_bloc.freezed.dart';

class PanelsBloc extends Bloc<PanelsEvent, PanelsState> {
  PanelsBloc() : super(PanelsState.initial()) {
    on<FetchPanels>(fetchPanels);
  }

  Future<void> fetchPanels(
      FetchPanels event, Emitter<PanelsState> emit) async {}
}
