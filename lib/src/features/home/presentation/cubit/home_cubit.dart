import 'package:dio/dio.dart';
import 'package:final_project/src/core/error/erorr_handler.dart';
import 'package:final_project/src/core/utils/shared/hive_helper.dart';
import 'package:final_project/src/features/home/domain/usecases/get_energy_reading_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/config/config.dart';
import '../../data/models/batteries/batteries.dart';
import '../../data/models/batteries/energy_reading_response.dart';
import '../../domain/usecases/get_batteries_uscase.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
      {required GetBatteriesUscase getBatteriesUscase,
      required GetEnergyReadingUsecase getEnergyReadingUsecase})
      : super(HomeInitial());

  final GetBatteriesUscase getBatteriesUscase = sl<GetBatteriesUscase>();
  GetEnergyReadingUsecase getEnergyReadingUsecase =
      sl<GetEnergyReadingUsecase>();
  Future<void> getBatteries() async {
    emit(HomeLoading());
    try {
      final batteries = await getBatteriesUscase.execute();
      if (!isClosed) {
        batteries.fold((l) => emit(HomeError(l.message)), (r) async {
          await HiveHelper<Batteries>('batteries')
              .addOrUpdate(r.batteries?.first.id, r);

          emit(
            HomeLoaded(r),
          );
        });
      }
    } on DioException catch (e) {
      emit(HomeError(ErrorHandler.handle(e).failure.message));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }

  Future<void> getBatteryReadings() async {
    try {
      emit(HomeGetEnergyReadingLoading());
      final response = await getEnergyReadingUsecase.call();
      response.fold((l) => emit(HomeError(l.message)),
          (r) => emit(HomeGetEnergyReadingLoaded(r)));
    } catch (e) {
      emit(HomeError(ErrorHandler.handle(e).failure.message));
      print(e);
    }
  }
}
