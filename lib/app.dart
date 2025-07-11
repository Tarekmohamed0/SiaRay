import 'package:easy_localization/easy_localization.dart';
import 'package:final_project/main.dart';

import 'src/core/config/config.dart';
import 'package:flutter/material.dart';
import 'src/core/routes/gorouter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/core/theme/theme.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        //   providers: [
        //     BlocProvider(create: (context) => SplashBloc()..add(AppStarted())),
        //     BlocProvider(create: (context) => SigninBloc()),
        //   ],
        //   child:

        ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, ch) => DismissKeyboard(
        child: MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerConfig: AppRouter.router,
          theme: getApplicationTheme(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
