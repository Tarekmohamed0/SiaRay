import 'dart:convert';

import 'package:final_project/src/core/config/config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

import '../../../../core/services/firebase/remote_config_service.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static const List<dynamic> settingItems = [
    {
      'title': 'Notification Settings',
      'icon': Icons.notifications_active,
      'leading': Icons.arrow_forward_ios,
    },
    {
      'title': 'Password Manager',
      'icon': Icons.password,
      'leading': Icons.arrow_forward_ios,
    },
    {
      'title': 'Delete Account',
      'icon': Icons.delete,
      'leading': Icons.arrow_forward_ios,
    },
  ];
  @override
  Widget build(BuildContext context) {
    final test = sl<RemoteConfigService>().getString('test');
    Logger().d(jsonDecode(test)['url']);
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back_ios, color: Colors.black)),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30),
                child: sl<RemoteConfigService>().getBool('show_setting_ui')
                    ? Column(
                        children: [
                          ...List.generate(
                            settingItems.length,
                            (index) => buildSettingsItem(
                              onTap: () {
                                settingItems[index]['title'] ==
                                        'Password Manager'
                                    ? GoRouter.of(context)
                                        .push('/PasswordManagerScreen')
                                    : null;
                              },
                              context,
                              title: settingItems[index]['title'],
                              icon: settingItems[index]['icon'],
                              leading: settingItems[index]['leading'],
                            ),
                          )
                        ],
                      )
                    : SizedBox.shrink()),
          )
        ],
      ),
    );
  }
}

Widget buildSettingsItem(
  BuildContext context, {
  String? title,
  IconData? icon,
  IconData? leading,
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap ?? () {},
    child: Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 20,
            children: [
              Icon(
                icon,
                color: Colors.black,
              ),
              Text(
                title ?? 'null',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Icon(leading, color: Colors.black),
        ],
      ),
    ),
  );
}
