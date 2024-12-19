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

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<SplashCubit>(context).checkAndFetchUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state is SplashNoInternet) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('No internet connection'),
              ));
            } else if (state is SplashLoaded) {
              GoRouter.of(context).go('/SplashScreen');
            } else if (state is AuthAuthenticated) {
              GoRouter.of(context).go('/home');
            } else if (state is AuthUnauthenticated) {
              GoRouter.of(context).go('/splash');
            } else if (state is UserError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.errorMessage),
              ));
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SiaRay',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 32)),
                  ShaderText(
                    text: 'faster',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 32),
                  ),
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
    );
  }
}
