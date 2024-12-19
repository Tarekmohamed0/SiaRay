import 'package:final_project/src/features/signin/presentation/cubit/signin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/check_box_withRow.dart';
import '../widgets/home_appbar.dart';
import '../widgets/home_form_field.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool ischecked = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocListener<SigninCubit, SigninState>(
          listener: (context, state) async {
            if (state is SigninSuccess) {
              GoRouter.of(context).go('/home', extra: state.user);
              final token = state.user.authorisation!.token;
              final prefs = await SharedPreferences.getInstance();
              await prefs.setString('auth_token', token!);
            } else if (state is SigninFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Center horizontally
                  children: [
                    const HomeAppBar(),
                    SizedBox(
                      height: 50.r,
                    ),
                    const Text('Welcom back!',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    HomeFormField(
                        formKey: formKey,
                        widget: widget,
                        emailController: widget._emailController,
                        passwordController: widget._passwordController),
                    const SizedBox(
                      height: 20,
                    ),
                    CheckBoxWithrow(
                        ischecked: ischecked,
                        onChanged: (value) {
                          setState(() {
                            ischecked = value!;
                          });
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.read<SigninCubit>().signin(
                                email: widget._emailController.text,
                                password: widget._passwordController.text);
                          }
                        },
                        child: const Text('Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 1,
                          width: 150,
                          color: Colors.grey,
                        ),
                        const Text('Or',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            )),
                        // horizontal divider
                        Container(
                          height: 1,
                          width: 150,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 70.r,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // tow buttons for google and apple
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(FaIcon(FontAwesomeIcons.google).icon,
                              color: Colors.black),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 50),
                            side:
                                const BorderSide(color: Colors.blue, width: 1),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(FaIcon(FontAwesomeIcons.apple).icon,
                              color: Colors.black),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 50),
                            side:
                                const BorderSide(color: Colors.blue, width: 1),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                          onPressed: () {
                            GoRouter.of(context).push('/SignUpScreen');
                          },
                          child: const Text('Sign up',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
