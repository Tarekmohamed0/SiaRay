import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubit/splash_cubit.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/55942632?v=4'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'AlterSol',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Text('Handel the\nenergy you\nproduce',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Enjoy independent elctricity and monitor\nyour solar panel performance in real time',
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60.0),
                  child: Image(
                      image: AssetImage('assets/images/smart.png'),
                      height: 450),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )),
      ),
    );
  }
}
