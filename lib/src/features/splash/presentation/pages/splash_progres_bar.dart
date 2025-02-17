import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SplashProgresBar extends StatefulWidget {
  const SplashProgresBar({super.key});

  @override
  State<SplashProgresBar> createState() => _SplashProgresBarState();
}

class _SplashProgresBarState extends State<SplashProgresBar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).go('/splash');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 15.0,
                animationDuration: 2000,
                percent: 0.9,
                barRadius: Radius.circular(30),
                backgroundColor: Colors.black,
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
