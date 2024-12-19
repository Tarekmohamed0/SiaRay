import 'package:final_project/app.dart';
import 'package:final_project/firebase_options.dart';
import 'package:final_project/src/core/constants/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'src/core/config/config.dart';
import 'src/core/utils/app_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Setup();
  await Supabase.initialize(
      url: Constant.supabaseUrl, anonKey: Constant.supabaseKey);
  Bloc.observer = AppBlocObserver();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const RootApp());
}
