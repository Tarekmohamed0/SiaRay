import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/error/erorr_handler.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/features/devices/data/models/add_device_home_error_response.dart';
import 'package:final_project/src/features/devices/data/models/add_device_request.dart';
import 'package:final_project/src/features/devices/data/models/device_response.dart';
import 'package:final_project/src/features/devices/data/sources/devices_services.dart';

import '../../domain/entities/add_sub_devices_home_response.dart';
import '../../domain/entities/sub_device.dart';
import '../models/add_sub_device_home_request.dart';
import '../models/sub_device_home_response.dart';
import '../models/sub_devices/subdevice.dart';

class RemotDataSources {
  final ApiServices apiServices = sl<ApiServices>();
  final DevicesServices devicesServices = DevicesServices();
  Future<Either<Failure, List<SubDevice>>> getSubDevice() async {
    try {
      final response = await apiServices.getSubDevice();
      return right(response.subdevices);
    } catch (e) {
      return left(ErrorHandler.handle(e).failure);
    }
  }

  Future<Either<Failure, DeviceResponse>> addDevice({
    required int subDeviceId,
    required int watPerHour,
    required String deviceName,
  }) async {
    try {
      final response = await apiServices.addSubDevice(
        AddDeviceRequest(
          subDeviceId: subDeviceId,
          watPerHour: watPerHour,
          deviceName: deviceName,
        ),
      );
      return right(response);
    } catch (e) {
      return left(ErrorHandler.handle(e).failure);
    }
  }

  Future<Either<Failure, AddSubDevicesHomeResponse>> addSupDeviceToHome({
    required AddSubDeviceHomeRequest addSubDevicesHomereq,
  }) async {
    try {
      final response = await apiServices.addSubDeviceToDevicesHome(
        addSubDevicesHomereq,
      );
      return right(response);
    } on DioException catch (e) {
      if (e.response != null) {
        final statusCode = e.response!.statusCode;
        final errorMessage =
            e.response!.data['message'] ?? 'An unknown error occurred';
        final eMessage =
            e.response!.data['error'] ?? 'An unknown error occurred';

        // final AddDeviceHomeErrorResponse errorResponse =
        //     AddDeviceHomeErrorResponse.fromJson(e.response!.data);
        return left(
          ServerFailure(
            errorMessage ?? eMessage.error ?? 'An unknown error occurred',
          ),
        );
      } else {
        return left(
          ServerFailure(
            e.response?.data ?? 'An unknown error occurred',
          ),
        );
      }
    }
  }

  Future<Either<Failure, SubDeviceHomeResponse>> getSubDeviceHome() async {
    try {
      final response = await apiServices.getSubDeviceHome();
      return right(response);
    } on DioException catch (e) {
      if (e.response != null) {
        final statusCode = e.response!.statusCode;
        final errorMessage =
            e.response!.data['message'] ?? 'An unknown error occurred';
        final eMessage =
            e.response!.data['error'] ?? 'An unknown error occurred';

        return left(
          ServerFailure(
            errorMessage ?? eMessage.error ?? 'An unknown error occurred',
          ),
        );
      } else {
        return left(
          ServerFailure(
            e.response?.data ?? 'An unknown error occurred',
          ),
        );
      }
    }
  }
}
