import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battery_event.dart';
part 'battery_state.dart';
part 'battery_bloc.freezed.dart';

class BatteryBloc extends Bloc<BatteryEvent, BatteryState> {
  BatteryBloc() : super(_Initial()) {
    on<BatteryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
