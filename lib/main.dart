import 'package:easy_localization/easy_localization.dart';
import 'package:final_project/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/core/config/config.dart';
import 'src/core/utils/app_bloc_observer.dart';
import 'src/core/utils/shared/hive_helper.dart';
import 'src/core/utils/shared/shared_prefs.dart';
import 'src/features/home/data/models/batteries/batteries.dart';
import 'src/features/home/data/models/batteries/battery.dart';
import 'src/features/home/data/models/batteries/battery_reading.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await EasyLocalization.ensureInitialized();
  await SharedPreferencesHelper.init();
  Setup();
  // await Supabase.initialize(
  //     url: Constant.supabaseUrl, anonKey: Constant.supabaseKey);
  Bloc.observer = AppBlocObserver();
  // initialize hive
  await Hive.initFlutter();
  // ignore: await_only_futures
  await HiveHelper<Batteries>('batteries');
  Hive.registerAdapter(BatteriesAdapter());
  Hive.registerAdapter(BatteryReadingAdapter());
  Hive.registerAdapter(BatteryAdapter());

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      fallbackLocale: const Locale('en'),
      path: 'assets/translation',
      child: RootApp(),
    ),
  );
  FlutterNativeSplash.remove();
}
