import 'package:dio/dio.dart';
import 'package:final_project/src/core/error/erorr_handler.dart';
import 'package:final_project/src/core/utils/shared/hive_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/config/config.dart';
import '../../data/models/batteries/batteries.dart';
import '../../domain/usecases/get_batteries_uscase.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required GetBatteriesUscase getBatteriesUscase})
      : super(HomeInitial());

  final GetBatteriesUscase getBatteriesUscase = sl<GetBatteriesUscase>();
  Future<void> getBatteries() async {
    emit(HomeLoading());
    try {
      final batteries = await getBatteriesUscase.execute();
      if (!isClosed) {
        batteries.fold((l) => emit(HomeError(l.message)), (r) async {
          await HiveHelper<Batteries>('batteries')
              .addOrUpdate(r.batteries?.first.id, r);

          // final data =
          //     HiveHelper<Batteries>('batteries').get(r.batteries?.first.id);
          // print(data);
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
}
