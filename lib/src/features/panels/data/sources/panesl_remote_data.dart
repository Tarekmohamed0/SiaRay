import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/error/erorr_handler.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/panels/data/models/get_device_response.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/services/api_services.dart';

class PaneslRemoteData {
  final ApiServices apiServices = sl<ApiServices>();
  Future<Either<Failure, GetDeviceResponse>> getDevice() async {
    try {
      final response = await apiServices.getDevice();
      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  Future<Either<Failure, String>> toggleDevice({
    required String status,
    required String serial_number,
  }) async {
    try {
      final response = await apiServices.toggleDevice(status, serial_number);

      return Right(response);
    } on DioException catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  Future<Either<Failure, String>> toggelMode({
    required String serialNumber,
    required String mode,
  }) async {
    try {
      final response = await apiServices.toggelMode(serialNumber, mode);
      return Right(response['message'] as String);
    } on DioException catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}
