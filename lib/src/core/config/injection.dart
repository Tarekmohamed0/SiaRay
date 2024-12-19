library dependency_injection;

import 'package:dio/dio.dart';
import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/features/signin/data/implements/implements.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../features/signin/data/sources/signin_remoteData.dart';
import '../../features/signin/domain/usecases/signin_usecase.dart';
import '../../features/signup/data/implements/implements.dart';
import '../../features/signup/data/sources/remote_dataSource.dart';
import '../../features/signup/domain/repositories/signUp_repo.dart';
import '../../features/signup/domain/usecases/signUp_uscase.dart';
import '../constants/colors.dart';
import '../utils/auth_services.dart';
import '../utils/dio_interceptors.dart';

class DependencyInjection {}

final sl = GetIt.instance;
void Setup() {
  sl.registerSingleton<AppColor>(AppColor());
// firebase services

  sl.registerLazySingleton<AuthServices>(() => AuthServices());
  // services
  sl.registerLazySingleton<ApiServices>(
      () => ApiServices(DioInterceptors.createAndSetupDio()));

  sl.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);

  // sl.registerSingleton<SigninFirebasedataSource>(SigninFirebasedataSource());
  // // repositories
  // sl.registerSingleton<SigninRepositoryImp>(SigninRepositoryImp());
  // sl.registerSingleton<SigninRepository>(SigninRepositoryImp());
  // // usecases
  sl.registerLazySingleton<SignupUseCase>(() => SignupUseCase(
      repository: SignupRepoImpl(remoteDataSource: SignupRemoteDataSource())));
  sl.registerLazySingleton<SigninUsecase>(() => SigninUsecase(
      signInrepository:
          SigninRepositoryImp(remoteDataSource: SigninRemoteDataSource())));
  // sl.registerSingleton<SignupUsecase>(SignupUsecase());
  // sl.registerSingleton<GetAgesUseCase>(GetAgesUseCase());
  // sl.registerSingleton<SigninUsecas>(SigninUsecas());
  // blocs

  // pages
}
