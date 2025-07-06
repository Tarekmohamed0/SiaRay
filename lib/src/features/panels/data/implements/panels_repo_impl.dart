import 'package:dartz/dartz.dart';

import 'package:final_project/src/core/error/error.dart';

import 'package:final_project/src/features/panels/data/models/get_device_response.dart';

import '../../../../core/error/erorr_handler.dart';
import '../sources/panesl_remote_data.dart';
import '../../domain/repositories/panels_repo.dart';

class PanelsRepoImpl implements PanelsRepo {
  final PaneslRemoteData remoteDataSource;
  PanelsRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, GetDeviceResponse>> getDevice() async {
    try {
      final response = await remoteDataSource.getDevice();
      return response.fold((l) => Left(l), (r) => Right(r));
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, String>> toggleDevice({
    required String status,
    required String serial_number,
  }) async {
    try {
      final response = await remoteDataSource.toggleDevice(
        status: status,
        serial_number: serial_number,
      );
      return response.fold((l) => Left(l), (r) => Right(r));
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  @override
  Future<Either<Failure, String>> toggelMode({
    required String serialNumber,
    required String mode,
  }) async {
    try {
      final response = await remoteDataSource.toggelMode(
        serialNumber: serialNumber,
        mode: mode,
      );
      return response.fold((l) => Left(l), (r) => Right(r));
    } catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}
