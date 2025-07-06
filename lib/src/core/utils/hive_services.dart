import 'package:final_project/src/core/utils/shared/hive_helper.dart';
import 'package:final_project/src/features/home/data/models/batteries/batteries.dart';
import 'package:final_project/src/features/home/data/models/batteries/battery.dart';
import 'package:final_project/src/features/home/data/models/batteries/battery_reading.dart';
import 'package:final_project/src/features/signup/data/models/auth.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../features/signup/data/models/user.dart';

class HiveServices {
  static const String batteries = 'batteries';
  static const String userBox = 'userBox';

  static Future<void> init() async {
    await Hive.initFlutter();
    HiveHelper<Batteries>(batteries).openBox();
    HiveHelper<UserModel>(userBox).openBox();
    HiveRegister.registerAdapters();
  }
}

class HiveRegister {
  static Future<void> registerAdapters() async {
    Hive.registerAdapter(BatteriesAdapter());
    Hive.registerAdapter(BatteryReadingAdapter());
    Hive.registerAdapter(BatteryAdapter());
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(UserModelAdapter());
    Hive.registerAdapter(AuthorisationAdapter());
  }
}
