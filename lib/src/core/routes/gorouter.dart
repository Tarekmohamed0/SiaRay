// إعداد الروتر باستخدام go_router

import 'package:final_project/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:final_project/src/features/signin/presentation/cubit/signin_cubit.dart';
import 'package:final_project/src/features/signup/presentation/cubit/signup_cubit.dart';
import 'package:final_project/src/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../testt.dart';
import '../../features/devices/presentation/pages/devices_screen.dart';
import '../../features/forgot_password/presentation/pages/forgot_password.dart';
import '../../features/home/presentation/pages/home_screen.dart';
import '../../features/resetpassword/presentation/pages/reset_password.dart';
import '../../features/signin/presentation/pages/signin_screen.dart';
import '../../features/signup/data/models/user_model.dart';
import '../../features/signup/presentation/pages/signUp_screen.dart';
import '../../features/signup/presentation/widgets/bar_chart.dart';
import '../../features/splash/presentation/pages/onboarding1_screen.dart';
import '../../features/splash/presentation/pages/splash_screen.dart';
import '../../features/splash/presentation/pages/splash_screen_2.dart';
import '../../features/subdevice.dart';
import '../../features/verification/presentation/pages/verifictoin_screen.dart';
import '../../features/verify/presentation/pages/verify_screen.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: '/SplashScreen2', // مسار الصفحة الأولى
    routes: [
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) {
          final user = state.extra; // Change UserModel to your user model class
          return BlocProvider(
            create: (context) => HomeCubit(),
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
        path: '/Subdevice',
        name: 'Subdevice',
        builder: (context, state) => Subdevice(),
      ),
      GoRoute(
        path: '/DevicesScreen',
        name: 'DevicesScreen',
        builder: (context, state) => DevicesScreen(),
      ),
      GoRoute(
        path: '/Testt',
        name: 'Testt',
        builder: (context, state) => Testt(),
      ),
      GoRoute(
        path: '/SigninScreen',
        name: 'SigninScreen',
        builder: (context, state) => BlocProvider(
          create: (context) => SigninCubit(),
          child: SigninScreen(),
        ),
      ),
      GoRoute(
        path: '/ForgotPasswordScreen',
        name: 'ForgotPasswordScreen',
        builder: (context, state) => ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/VerifictoinScreen',
        name: 'VerifictoinScreen',
        builder: (context, state) => VerifictoinScreen(),
      ),
      GoRoute(
        path: '/VerifyScreen',
        name: 'VerifyScreen',
        builder: (context, state) => VerifyScreen(),
      ),
      GoRoute(
        path: '/ResetPasswordScreen',
        name: 'ResetPasswordScreen',
        builder: (context, state) => ResetPasswordScreen(),
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
          child: SplashScreen2(),
        ),
      ),
      GoRoute(
        path: '/Onboarding1Screen',
        name: 'Onboarding1Screen',
        builder: (context, state) => BlocProvider(
          create: (context) => SplashCubit(),
          child: Onboarding1Screen(),
        ),
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
