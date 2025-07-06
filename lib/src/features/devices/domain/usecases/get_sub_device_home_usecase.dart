import 'package:dartz/dartz.dart';
import 'package:final_project/src/core/error/error.dart';
import 'package:final_project/src/features/devices/data/models/sub_device_home_response.dart';
import 'package:json_annotation/json_annotation.dart';

import '../repositories/repositories.dart';

class GetSubDeviceHomeUsecase {
  final DevicesRepository repository;
  GetSubDeviceHomeUsecase(this.repository);

  Future<Either<Failure, SubDeviceHomeResponse>> call() async {
    final result = await repository.getSubDeviceHome();
    return result.fold((l) => Left(l), (r) => Right(r));
  }
}
