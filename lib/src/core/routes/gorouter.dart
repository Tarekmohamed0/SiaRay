// إعداد الروتر باستخدام go_router

import 'package:final_project/main.dart';
import 'package:final_project/src/features/devices/data/models/sub_devices/subsubdevice.dart';
import 'package:final_project/src/features/devices/domain/entities/sub_device.dart';
import 'package:final_project/src/features/devices/domain/entities/sub_sub_device.dart';
import 'package:final_project/src/features/devices/presentation/cubit/devices_cubit.dart';
import 'package:final_project/src/features/home/domain/usecases/get_batteries_uscase.dart';
import 'package:final_project/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:final_project/src/features/mainscreen/presentation/cubit/mainscreen_cubit.dart';
import 'package:final_project/src/features/panelinfo/presentation/bloc/panelinfo_bloc.dart';
import 'package:final_project/src/features/panels/presentation/bloc/panels_bloc.dart';
import 'package:final_project/src/features/personalinfo/presentation/bloc/personalinfo_bloc.dart';
import 'package:final_project/src/features/signin/presentation/cubit/signin_cubit.dart';
import 'package:final_project/src/features/signup/presentation/cubit/signup_cubit.dart';
import 'package:final_project/src/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../error_screen.dart';
import '../../../testt.dart';
import '../../features/battery/presentation/pages/battery_screen.dart';
import '../../features/devices/presentation/pages/add_new_device.dart';
import '../../features/devices/presentation/pages/devices_screen.dart';
import '../../features/devices/presentation/pages/my_devices.dart';
import '../../features/devices/presentation/pages/select_tv.dart';
import '../../features/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import '../../features/forgot_password/presentation/pages/forgot_password.dart';
import '../../features/home/data/implements/home_repo_impl.dart';
import '../../features/home/data/sources/remote/get_batteries_remote.dart';
import '../../features/home/data/sources/remote/get_energy_reading.dart';
import '../../features/home/domain/usecases/get_energy_reading_usecase.dart';
import '../../features/home/presentation/pages/home_screen.dart';
import '../../features/mainscreen/presentation/pages/main_screen.dart';
import '../../features/notificatoin/presentation/pages/notificatoin_screen.dart';
import '../../features/panelinfo/presentation/pages/panel_info_screen.dart';
import '../../features/panels/presentation/pages/panels_screen.dart';
import '../../features/passwordmanager/presentation/pages/password_manager_screen.dart';
import '../../features/personalinfo/presentation/pages/personal_info_screen.dart';
import '../../features/profile/presentation/pages/profile_screen.dart';
import '../../features/resetpassword/presentation/cubit/resetpassword_cubit.dart';
import '../../features/resetpassword/presentation/pages/reset_password.dart';
import '../../features/settings/presentation/pages/settings_screen.dart';
import '../../features/signin/presentation/pages/signin_screen.dart';
import '../../features/signup/presentation/pages/signUp_screen.dart';
import '../../features/signup/presentation/widgets/bar_chart.dart';
import '../../features/splash/presentation/pages/onboarding1_screen.dart';
import '../../features/splash/presentation/pages/splash_progres_bar.dart';
import '../../features/splash/presentation/pages/splash_screen.dart';
import '../../features/splash/presentation/pages/splash_screen_2.dart';
import '../../features/static_screen/presentation/pages/static_screen.dart';
import '../../features/subdevice.dart';
import '../../features/verification/presentation/cubit/verification_cubit.dart';
import '../../features/verification/presentation/pages/verifictoin_screen.dart';
import '../../features/verify/presentation/pages/verify_screen.dart';
import '../config/injection.dart';
import '../services/api_services.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/SplashScreen2', // مسار الصفحة الأولى
    routes: [
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) {
          final user = state.extra; // Change UserModel to your user model class
          return BlocProvider(
            create: (context) => sl<HomeCubit>(),
            child: HomeScreen(user: user),
          );
        },
      ),
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => BlocProvider(
          create: (context) => SplashCubit()..checkAndFetchUserData(),
          child: SplashScreen(),
        ),
      ),
      GoRoute(
        path: '/MainScreen',
        name: 'MainScreen',
        builder: (context, state) => BlocProvider(
          create: (context) => MainscreenCubit(),
          child: MainScreen(),
        ),
      ),
      GoRoute(
        path: '/PanelInfoScreen',
        name: 'PanelInfoScreen',
        builder: (context, state) => BlocProvider(
          create: (context) => PanelinfoBloc(),
          child: PanelInfoScreen(),
        ),
      ),
      GoRoute(
        path: '/Subdevice',
        name: 'Subdevice',
        builder: (context, state) => const Subdevice(),
      ),
      GoRoute(
        path: '/DevicesScreen',
        name: 'DevicesScreen',
        builder: (context, state) {
          final devices = state.extra as List<SubDevice>;
          return DevicesScreen(
            subDevices: devices,
          );
        },
      ),
      GoRoute(
        path: '/MyDevices',
        name: 'MyDevices',
        builder: (context, state) => MyDevices(),
      ),
      GoRoute(
        path: '/ProfileScreen',
        name: 'ProfileScreen',
        builder: (context, state) => ProfileScreen(),
      ),
      GoRoute(
        path: '/PersonalInfoScreen',
        name: 'PersonalInfoScreen',
        builder: (context, state) => BlocProvider(
          create: (context) => PersonalinfoBloc(),
          child: PersonalInfoScreen(),
        ),
      ),
      GoRoute(
        path: '/NotificatoinScreen',
        name: 'NotificatoinScreen',
        builder: (context, state) => NotificatoinScreen(),
      ),
      GoRoute(
        path: '/SettingsScreen',
        name: 'SettingsScreen',
        builder: (context, state) => SettingsScreen(),
      ),
      GoRoute(
        path: '/AddNewDevice',
        name: 'AddNewDevice',
        builder: (context, state) {
          final subDeviceId = (state.extra as Map<String, int?>)['subDeviceId'];
          return BlocProvider(
            create: (context) => sl<DevicesCubit>(),
            child: AddNewDevice(subDeviceId: subDeviceId ?? 0),
          );
        },
      ),
      GoRoute(
        path: '/PasswordManagerScreen',
        name: 'PasswordManagerScreen',
        builder: (context, state) {
          return PasswordManagerScreen();
        },
      ),
      GoRoute(
        path: '/BatteryScreen',
        name: 'BatteryScreen',
        builder: (context, state) => BatteryScreen(),
      ),
      GoRoute(
        path: '/Testt',
        name: 'Testt',
        builder: (context, state) => const Testt(),
      ),
      GoRoute(
        path: '/SigninScreen',
        name: 'SigninScreen',
        builder: (context, state) => BlocProvider(
          create: (context) => sl<SigninCubit>(),
          child: SigninScreen(),
        ),
      ),
      GoRoute(
        path: '/ForgotPasswordScreen',
        name: 'ForgotPasswordScreen',
        builder: (context, state) => BlocProvider(
          create: (context) => ForgotPasswordCubit(),
          child: const ForgotPasswordScreen(),
        ),
      ),
      GoRoute(
          path: '/VerifictoinScreen',
          name: 'VerifictoinScreen',
          builder: (context, state) {
            final email = state.extra as String;
            return BlocProvider(
              create: (context) => VerificationCubit(),
              child: VerifictoinScreen(email: email),
            );
          }),
      GoRoute(
        path: '/VerifyScreen',
        name: 'VerifyScreen',
        builder: (context, state) => const VerifyScreen(),
      ),
      GoRoute(
        path: '/ResetPasswordScreen',
        name: 'ResetPasswordScreen',
        builder: (context, state) {
          final email =
              (state.extra as Map<String, dynamic>)['email'] as String;
          final token =
              (state.extra as Map<String, dynamic>)['token'] as String;
          return BlocProvider(
            create: (context) => ResetpasswordCubit(),
            child: ResetPasswordScreen(email: email, token: token),
          );
        },
      ),
      GoRoute(
        path: '/SignupScreen',
        name: 'SignupScreen',
        builder: (context, state) => BlocProvider(
          create: (context) => SignupCubit(),
          child: SignupScreen(),
        ),
      ),
      GoRoute(
        path: '/BarChartSample1',
        name: 'BarChartSample1',
        builder: (context, state) => BarChartSample1(),
      ),
      GoRoute(
        path: '/SplashScreen2',
        name: 'SplashScreen2',
        builder: (context, state) => BlocProvider(
          create: (context) => SplashCubit(),
          child: const SplashScreen2(),
        ),
      ),
      GoRoute(
        path: '/Onboarding1Screen',
        name: 'Onboarding1Screen',
        builder: (context, state) => BlocProvider(
          create: (context) => SplashCubit(),
          child: const Onboarding1Screen(),
        ),
      ),
      GoRoute(
        path: '/StaticScreen',
        name: 'StaticScreen',
        builder: (context, state) => BlocProvider(
          create: (context) => SplashCubit(),
          child: const StaticScreen(),
        ),
      ),
      GoRoute(
          path: '/SelectTv',
          name: 'SelectTv',
          builder: (context, state) {
            final devices = state.extra as List<SubSubDevice>;
            return BlocProvider(
              create: (context) => SplashCubit(),
              child: SelectTv(
                subSubDevices: devices,
              ),
            );
          }),
      GoRoute(
        path: '/PanelsScreen',
        name: 'PanelsScreen',
        builder: (context, state) => BlocProvider(
          create: (context) => PanelsBloc(),
          child: const PanelsScreen(),
        ),
      ),
      GoRoute(
        path: '/SplashProgresBar',
        name: 'SplashProgresBar',
        builder: (context, state) => const SplashProgresBar(),
      ),
      GoRoute(
        path: '/ErrorScreen',
        name: 'ErrorScreen',
        builder: (context, state) {
          final errorMessage = state.extra as String;
          return ErrorScreen(errorMessage: errorMessage);
        },
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('404 - Page not found'),
      ),
    ),
  );
}
