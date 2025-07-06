import 'dart:async';
import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:final_project/app.dart';
import 'package:final_project/error_screen.dart';
import 'package:final_project/firebase_options.dart';
import 'package:final_project/firebase_utiles.dart';
import 'package:final_project/send_notification_services.dart';
import 'package:final_project/src/core/services/firebase/remote_config_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/core/config/config.dart';
import 'src/core/utils/app_bloc_observer.dart';
import 'src/core/utils/hive_services.dart';
import 'src/core/utils/shared/hive_helper.dart';
import 'src/core/utils/shared/shared_prefs.dart';
import 'src/features/home/data/models/batteries/batteries.dart';
import 'src/features/home/data/models/batteries/battery.dart';
import 'src/features/home/data/models/batteries/battery_reading.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  BindingBase.debugZoneErrorsAreFatal = true;

  runZonedGuarded(() async {
    FlutterError.onError = (FlutterErrorDetails details) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        GoRouter.of(navigatorKey.currentContext!)
            .push('/ErrorScreen', extra: details.exceptionAsString());
        // Handle the error here, e.g., log it or show a dialog
        print('Flutter Error: ${details.exceptionAsString()}');
      });
    };

    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // Remove the splash screen as soon as possible
    FlutterNativeSplash.remove();

    // await sendNotification(
    //     token:
    //         'fpMGWdhfRjqbK0DQrpxj_I:APA91bFpFCxwOLZypvYHNnKCsQJXGjVrTJuCErLkMXmsQ4YilJ-fx-02ojVTQjh0_hiCJbltdXJH-zGoKIVZh0XAaHHVJMaOBT46NmQOFs28L38UZKHT51g',
    //     title: 'ffff',
    //     body: 'ddds',
    //     data: {'key': 'value'});
    // await FirebaseUtiles().getToken();
    await EasyLocalization.ensureInitialized();
    await SharedPreferencesHelper.init();
    Setup();
    await sl<RemoteConfigService>()
        .init()
        .then((value) => print('Remote Config Initialized'))
        .catchError((error) {
      print('Error initializing remote config: $error');
    });
    Bloc.observer = AppBlocObserver();

    await HiveServices.init();

    runApp(
      EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        fallbackLocale: const Locale('en'),
        path: 'assets/translation',
        child: RootApp(),
      ),
    );

    FlutterNativeSplash.remove();
  }, (error, stackTrace) {
    print('Error: $error');
    print('StackTrace: $stackTrace');
  });
}
