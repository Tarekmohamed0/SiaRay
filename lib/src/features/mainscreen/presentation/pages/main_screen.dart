import 'package:final_project/src/features/chatbot/presentation/pages/chat_bot_screen.dart';
import 'package:final_project/src/features/home/domain/usecases/get_batteries_uscase.dart';
import 'package:final_project/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:final_project/src/features/static_screen/presentation/pages/static_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../core/config/injection.dart';
import '../../../devices/presentation/pages/devices_screen.dart';
import '../../../home/presentation/pages/home_screen.dart';
import '../../../panels/presentation/pages/panels_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  List<dynamic> bottombaritems = [
    {
      'label': 'Home',
      'icon': 'assets/icons/home_icon.svg',
    },
    {'label': 'Statisric', 'icon': 'assets/icons/static_icon.svg'},
    {'label': 'Panels', 'icon': 'assets/icons/panels_icon.svg'},
    {'label': 'Devices', 'icon': 'assets/icons/devices_icon.svg'},
    {'label': 'Chat', 'icon': 'assets/icons/chat_bot_icon.svg'},
  ];

  List<Widget> screens = [
    HomeScreen(),
    StaticScreen(),
    PanelsScreen(),
    DevicesScreen(),
    ChatBotScreen(),
    // StaticScreen(),
    // SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeCubit(getBatteriesUscase: sl<GetBatteriesUscase>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: IconThemeData(color: Colors.blue),
            elevation: 0,
            onTap: (value) => setState(() => currentIndex = value),
            backgroundColor: Colors.white,
            selectedItemColor: Color(0xff468ED1),
            currentIndex: currentIndex,
            items: [
              ...List.generate(bottombaritems.length, (index) {
                return BottomNavigationBarItem(
                    icon: SvgPicture.asset(bottombaritems[index]['icon'],
                        color: currentIndex == index
                            ? Color(0xff468ED1)
                            : Colors.grey),
                    label: bottombaritems[index]['label']);
              })
            ]),
        body: screens[currentIndex],
      ),
    );
  }
}
