import 'package:final_project/src/core/services/api_services.dart';
import 'package:final_project/src/core/services/firebase/firebase_remote_config_service.dart';
import 'package:final_project/src/core/services/firebase/remote_config_service.dart';
import 'package:final_project/src/core/utils/shared/hive_helper.dart';
import 'package:final_project/src/features/home/data/models/batteries/batteries.dart';
import 'package:final_project/src/features/home/data/sources/remote/get_energy_reading.dart';
import 'package:final_project/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:final_project/src/features/notificatoin/presentation/bloc/notificatoin_bloc.dart';
import 'package:final_project/src/features/panels/presentation/bloc/panels_bloc.dart';
import 'package:final_project/src/features/passwordmanager/data/implements/password_manager_repo_impl.dart';
import 'package:final_project/src/features/passwordmanager/data/sources/password_manager_remote_data_source.dart';
import 'package:final_project/src/features/passwordmanager/domain/repositories/password_manager_repo.dart';
import 'package:final_project/src/features/passwordmanager/domain/usecases/change_password_usecase.dart';
import 'package:final_project/src/features/personalinfo/data/implements/implements.dart';
import 'package:final_project/src/features/personalinfo/data/sources/sources.dart';
import 'package:final_project/src/features/profile/data/implements/implements.dart';
import 'package:final_project/src/features/profile/data/sources/sources.dart';
import 'package:final_project/src/features/profile/domain/repositories/repositories.dart';
import 'package:final_project/src/features/signin/data/implements/implements.dart';
import 'package:final_project/src/features/signin/domain/usecases/logout_uscase.dart';
import 'package:final_project/src/features/signin/presentation/cubit/signin_cubit.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../features/devices/data/implements/implements.dart';
import '../../features/devices/data/sources/remot_data_sources.dart';
import '../../features/devices/domain/usecases/add_device_home_usecase.dart';
import '../../features/devices/domain/usecases/get_sub_device_home_usecase.dart';
import '../../features/devices/presentation/cubit/devices_cubit.dart';
import '../../features/home/data/implements/home_repo_impl.dart';
import '../../features/home/data/sources/remote/get_batteries_remote.dart';
import '../../features/home/domain/usecases/get_batteries_uscase.dart';
import '../../features/home/domain/usecases/get_energy_reading_usecase.dart';
import '../../features/passwordmanager/presentation/bloc/passwordmanager_bloc.dart';
import '../../features/personalinfo/domain/repositories/repositories.dart';
import '../../features/personalinfo/presentation/bloc/personalinfo_bloc.dart';
import '../../features/signin/data/sources/signin_remoteData.dart';
import '../../features/signin/domain/usecases/signin_usecase.dart';
import '../../features/signup/data/implements/implements.dart';
import '../../features/signup/data/sources/remote_dataSource.dart';
import '../../features/signup/domain/usecases/signUp_uscase.dart';
import '../constants/colors.dart';
import '../utils/dio_interceptors.dart';

class DependencyInjection {}

final sl = GetIt.instance;
void Setup() {
  sl.registerSingleton<AppColor>(AppColor());
// firebase services

  // sl.registerLazySingleton<AuthServices>(() => AuthServices());
  // services
  sl.registerLazySingleton<RemoteConfigService>(
      () => FirebaseRemoteConfigService());
  sl.registerSingleton<ApiServices>(
      ApiServices(DioInterceptors.createAndSetupDio()));
  sl.registerLazySingleton<HiveHelper<UserModel>>(
      () => HiveHelper<UserModel>('userBox'));
  sl.registerLazySingleton<HiveHelper<Batteries>>(
      () => HiveHelper<Batteries>('Batteries'));

  sl.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);

  // sl.registerSingleton<SigninFirebasedataSource>(SigninFirebasedataSource());
  // // repositories
  sl.registerLazySingleton<PasswordManagerRepo>(() => PasswordManagerRepoImpl(
      remoteDataSource: PasswordManagerRemoteDataSource()));
  sl.registerLazySingleton<ProfileRepository>(() => ProfileRepositoryImp());
  sl.registerLazySingleton<PersonalinfoRepository>(() =>
      PersonalinfoRepositoryImp(
          remoteDataSource: PersonalinfoRemoteDataSource()));

  // sl.registerSingleton<SigninRepositoryImp>(SigninRepositoryImp());
  // sl.registerSingleton<SigninRepository>(SigninRepositoryImp());
  // // usecases
  sl.registerLazySingleton<GetSubDeviceHomeUsecase>(() =>
      GetSubDeviceHomeUsecase(
          DevicesRepositoryImp(remoteDataSource: RemotDataSources())));
  sl.registerLazySingleton<AddDeviceHomeUsecase>(() => AddDeviceHomeUsecase(
      DevicesRepositoryImp(remoteDataSource: RemotDataSources())));
  sl.registerLazySingleton<SignupUseCase>(() => SignupUseCase(
      repository: SignupRepoImpl(remoteDataSource: SignupRemoteDataSource())));
  sl.registerLazySingleton<ChangePasswordUsecase>(
      () => ChangePasswordUsecase(repository: sl<PasswordManagerRepo>()));
  sl.registerLazySingleton<LogoutUscase>(() => LogoutUscase(
      signInrepository:
          SigninRepositoryImp(remoteDataSource: SigninRemoteDataSource())));
  sl.registerLazySingleton<SigninUsecase>(() => SigninUsecase(
      signInrepository:
          SigninRepositoryImp(remoteDataSource: SigninRemoteDataSource())));
  sl.registerSingleton<GetBatteriesUscase>(GetBatteriesUscase(
      repository: HomeRepoImpl(
          getEnergyReading: GetEnergyReading(sl<ApiServices>()),
          getBatteriesRemote: GetBatteriesRemote(sl<ApiServices>()))));
  sl.registerSingleton<GetEnergyReadingUsecase>(GetEnergyReadingUsecase(
      HomeRepoImpl(
          getEnergyReading: GetEnergyReading(sl<ApiServices>()),
          getBatteriesRemote: GetBatteriesRemote(sl<ApiServices>()))));
  // sl.registerSingleton<SignupUsecase>(SignupUsecase());
  // sl.registerSingleton<GetAgesUseCase>(GetAgesUseCase());
  // sl.registerSingleton<SigninUsecas>(SigninUsecas());
  // blocs
  sl.registerCachedFactory<PanelsBloc>(() => PanelsBloc());
  sl.registerCachedFactory<PersonalinfoBloc>(() => PersonalinfoBloc());
  sl.registerCachedFactory<SigninCubit>(() => SigninCubit());
  sl.registerCachedFactory<DevicesCubit>(() => DevicesCubit());
  sl.registerCachedFactory<HomeCubit>(() => HomeCubit(
      getBatteriesUscase: sl<GetBatteriesUscase>(),
      getEnergyReadingUsecase: GetEnergyReadingUsecase(HomeRepoImpl(
          getEnergyReading: GetEnergyReading(sl<ApiServices>()),
          getBatteriesRemote: GetBatteriesRemote(sl<ApiServices>())))));
  sl.registerCachedFactory<NotificatoinBloc>(() => NotificatoinBloc());
  sl.registerCachedFactory<PasswordmanagerBloc>(() => PasswordmanagerBloc());
  // pages
}
