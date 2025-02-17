import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'panelinfo_event.dart';
part 'panelinfo_state.dart';
part 'panelinfo_bloc.freezed.dart';

class PanelinfoBloc extends Bloc<PanelinfoEvent, PanelinfoState> {
  PanelinfoBloc() : super(PanelinfoState.initial()) {
    on<GetPanelData>(getPanelData);
  }

  Future<void> getPanelData(
      GetPanelData event, Emitter<PanelinfoState> emit) async {}
}
