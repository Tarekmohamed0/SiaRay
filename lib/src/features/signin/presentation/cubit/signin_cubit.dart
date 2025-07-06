import 'package:dio/dio.dart';
import 'package:final_project/src/core/constants/constant.dart';
import 'package:final_project/src/core/utils/shared/hive_helper.dart';
import 'package:final_project/src/features/signin/domain/usecases/logout_uscase.dart';
import 'package:final_project/src/features/signin/domain/usecases/signin_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';

import '../../../../core/config/config.dart';
import '../../../../core/utils/shared/shared_prefs.dart';
import '../../../signup/data/models/user_model.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit() : super(SigninInitial());

  // future to signin
  Future<void> signin({required String email, required String password}) async {
    emit(SigninLoading());
    try {
      final response = await sl<SigninUsecase>().execute(email, password);
      response.fold(
        (l) {
          emit(SigninFailed(l.message));
        },
        (user) async {
          if (user.authorisation?.token != null && user.user != null) {
            final userCache = sl<HiveHelper<UserModel>>();
            final logger = Logger();

            // Store user data
            await userCache.addOrUpdate(Constant.userCacheKey, user);
            final cachedUser = userCache.get(Constant.userCacheKey);
            logger.i('Cached user: $cachedUser');

            // Store auth token
            await SharedPreferencesHelper.setString(
                Constant.authTokenKey, user.authorisation!.token!);
            final token =
                SharedPreferencesHelper.getString(Constant.authTokenKey);

            token != null
                ? emit(SigninSuccess(cachedUser!))
                : logger.e('Token is null');

            logger.i('Signin Success');
          } else if (user.message != null) {
            emit(SigninFailed(user.message.toString()));
          } else if (user.status != null) {
            emit(SigninFailed(user.message?.toString() ?? 'Unknown error'));
          }
        },
      );
    } on DioException catch (e) {
      Logger().e(' this error from cubit${e.response?.data}');

      emit(SigninFailed(e.toString()));
    }
  }

  Future<void> logout() async {
    emit(LogoutLoading());
    try {
      await SharedPreferencesHelper.remove('auth_token');
      final response = await sl<LogoutUscase>().execute();
      response.fold(
        (l) {
          emit(LogoutFailed(l.message));
        },
        (r) {
          emit(LogoutSuccess(r.message ?? 'Logout Success'));
        },
      );
    } catch (e) {
      emit(SigninFailed(e.toString()));
    }
  }
}
