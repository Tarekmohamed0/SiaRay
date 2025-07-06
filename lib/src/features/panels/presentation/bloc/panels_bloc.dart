import 'package:final_project/src/core/error/erorr_handler.dart';
import 'package:final_project/src/features/panels/data/implements/panels_repo_impl.dart';
import 'package:final_project/src/features/panels/data/models/get_device_response.dart';
import 'package:final_project/src/features/panels/domain/usecases/get_device_uscase.dart';
import 'package:final_project/src/features/panels/domain/usecases/toggle_device_uscase.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/sources/panesl_remote_data.dart';
import '../../domain/usecases/toggle_device_mode_usecase.dart';

part 'panels_event.dart';
part 'panels_state.dart';
part 'panels_bloc.freezed.dart';

class PanelsBloc extends Bloc<PanelsEvent, PanelsState> {
  bool isSwitchOn = false;
  final ToggleDeviceModeUsecase toggleDeviceModeUsecase =
      ToggleDeviceModeUsecase(
          PanelsRepoImpl(remoteDataSource: PaneslRemoteData()));
  final ToggleDeviceUscase toggledeviceuscase = ToggleDeviceUscase(
      repository: PanelsRepoImpl(remoteDataSource: PaneslRemoteData()));
  final GetDeviceUscase getDeviceUscase = GetDeviceUscase(
    repository: PanelsRepoImpl(remoteDataSource: PaneslRemoteData()),
  );
  PanelsBloc() : super(PanelsState.initial()) {
    on<FetchPanels>(fetchPanels);
    on<GetDevice>(getDevice);
    on<ToggleDevice>(toggleDevice);
    on<ToggelMode>(toggelMode);
  }
  Future<void> toggelMode(ToggelMode event, Emitter<PanelsState> emit) async {
    try {
      emit(PanelsState.loading());
      final response = await toggleDeviceModeUsecase.call(
          serialNumber: event.serial_number, mode: event.mode);
      response.fold(
        (l) => emit(PanelsState.error(l.message)),
        (r) => emit(PanelsState.deviceToggled(r)),
      );
    } catch (e) {
      emit(PanelsState.error(ErrorHandler.handle(e).failure.message));
    }
  }

  Future<void> fetchPanels(
      FetchPanels event, Emitter<PanelsState> emit) async {}

  Future<void> getDevice(GetDevice event, Emitter<PanelsState> emit) async {
    emit(PanelsState.loading());
    try {
      final response = await getDeviceUscase.call();
      response.fold((l) => emit(PanelsState.error(l.message)), (r) {
        emit(PanelsState.deviceLoaded(r));
      });
    } catch (e) {
      emit(PanelsState.error(ErrorHandler.handle(e).failure.message));
    }
  }

  Future<void> toggleDevice(
      ToggleDevice event, Emitter<PanelsState> emit) async {
    emit(PanelsState.loading());
    try {
      final response = await toggledeviceuscase.call(
          status: event.status, serial_number: event.serial_number);
      return response.fold((l) => l, (r) => r);
    } catch (e) {
      emit(PanelsState.error(ErrorHandler.handle(e).failure.message));
    }
  }
}
