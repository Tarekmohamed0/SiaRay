import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:final_project/src/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../widgets/shader_text.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
    Future.delayed(Duration(seconds: 7), () {
      GoRouter.of(context).go('/splash');
    });
    // BlocProvider.of<SplashCubit>(context).checkAndFetchUserData();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
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
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: Container(
                color: Colors.white,
                width: MediaQuery.sizeOf(context).width,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      spacing: 5,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('SiaRay',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 28)),

                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 40.0,
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 130, // Fixed width container
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  RotateAnimatedText(
                                    'faster',
                                    transitionHeight: 50, // Consistent height
                                    alignment: Alignment
                                        .centerLeft, // Align text consistently
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 28,
                                      foreground: Paint()
                                        ..shader = LinearGradient(
                                          colors: [
                                            Colors.black,
                                            Colors.blue,
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ).createShader(const Rect.fromLTWH(
                                            0.0, 0.0, 200.0, 70.0)),
                                    ),
                                    rotateOut: true,
                                  ),
                                  RotateAnimatedText(
                                    'easy',
                                    transitionHeight: 50, // Consistent height
                                    alignment: Alignment
                                        .centerLeft, // Align text consistently
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 28,
                                      foreground: Paint()
                                        ..shader = LinearGradient(
                                          colors: [
                                            Colors.black,
                                            Colors.blue,
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ).createShader(const Rect.fromLTWH(
                                            0.0, 0.0, 200.0, 70.0)),
                                    ),
                                    rotateOut: true,
                                  ),
                                  RotateAnimatedText(
                                    'beautiful',
                                    transitionHeight: 50, // Consistent height
                                    alignment: Alignment
                                        .centerLeft, // Align text consistently
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 28,
                                      foreground: Paint()
                                        ..shader = LinearGradient(
                                          colors: [
                                            Colors.black,
                                            Colors.blue,
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ).createShader(const Rect.fromLTWH(
                                            0.0, 0.0, 200.0, 70.0)),
                                    ),
                                    rotateOut: true,
                                  ),
                                ],
                                onTap: () {
                                  print("Tap Event");
                                },
                              ),
                            ),
                          ),
                        ),
                        // AnimatedBuilder(
                        //   animation: _controller,
                        //   builder: (context, child) {
                        //     return Transform.translate(
                        //       offset: Offset(0.0,
                        //           -100 * _controller.value), // Adjust the offset value
                        //       child: ShaderText(
                        //         text: 'faster',
                        //         style: const TextStyle(
                        //             color: Colors.black,
                        //             fontWeight: FontWeight.w500,
                        //             fontSize: 32),
                        //       ),
                        //     );
                        //   },
                        // ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Let\'s start this journey',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
