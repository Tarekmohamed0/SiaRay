import 'package:final_project/src/core/config/injection.dart';
import 'package:final_project/src/core/error/erorr_handler.dart';
import 'package:final_project/src/features/devices/data/implements/implements.dart';
import 'package:final_project/src/features/devices/data/models/add_device_request.dart';
import 'package:final_project/src/features/devices/data/models/add_sub_device_home_request.dart';
import 'package:final_project/src/features/devices/data/models/device_response.dart';
import 'package:final_project/src/features/devices/domain/usecases/add_device_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/models/sub_device_home_response.dart';
import '../../data/models/sub_devices/subdevice.dart';
import '../../data/sources/remot_data_sources.dart';
import '../../domain/entities/add_sub_devices_home_response.dart';
import '../../domain/entities/sub_device.dart';
import '../../domain/usecases/add_device_home_usecase.dart';
import '../../domain/usecases/get_sub_device_home_usecase.dart';
import '../../domain/usecases/get_sub_device_uscase.dart';

part 'devices_state.dart';

class DevicesCubit extends Cubit<DevicesState> {
  DevicesCubit() : super(DevicesInitial());
  final GetSubDeviceHomeUsecase _getSubDeviceHomeUsecase =
      sl<GetSubDeviceHomeUsecase>();
  final AddDeviceHomeUsecase addDeviceHomeUsecase = sl<AddDeviceHomeUsecase>();
  final AddDeviceUsecase addDeviceUsecase = AddDeviceUsecase(
      DevicesRepositoryImp(remoteDataSource: RemotDataSources()));
  final GetSubDeviceUscase getsubdevices =
      GetSubDeviceUscase(DevicesRepositoryImp(
    remoteDataSource: RemotDataSources(),
  ));

  Future<void> getSubDevices() async {
    emit(DevicesLoading());
    try {
      final response = await getsubdevices.call();
      response.fold((l) => emit(DevicesError(l.message)), (r) {
        emit(DevicesLoaded(r));
      });
    } catch (e) {
      emit(DevicesError(e.toString()));
    }
  }

  Future<void> addDevice({
    required int subDeviceId,
    required int watPerHour,
    required String deviceName,
  }) async {
    // emit(DevicesLoading());
    try {
      final response = await addDeviceUsecase.call(
        subDeviceId: subDeviceId,
        watPerHour: watPerHour,
        deviceName: deviceName,
      );
      return response.fold((l) {
        emit(DevicesError(ErrorHandler.handle(l).failure.message));
      }, (r) {
        emit(deviceAdded(r));
      });
    } catch (e) {
      emit(DevicesError(ErrorHandler.handle(e).failure.message));
    }
  }

  Future<void> addSubDeviceToHome({
    required AddSubDeviceHomeRequest request,
  }) async {
    emit(DevicesLoading());
    final response = await addDeviceHomeUsecase.call(
      request: request,
    );
    return response.fold((l) {
      emit(DevicesError(l.message));
    }, (r) {
      emit(DeviceAddedToHome(r));
    });
  }

  Future<void> getSubDeviceHome() async {
    emit(DevicesLoading());
    try {
      final response = await _getSubDeviceHomeUsecase.call();
      response.fold((l) => emit(DevicesError(l.message)), (r) {
        emit(DevicesLoadedHome(r));
      });
    } catch (e) {
      emit(DevicesError(e.toString()));
    }
  }
}
