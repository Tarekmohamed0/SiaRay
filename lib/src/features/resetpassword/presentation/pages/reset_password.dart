import 'package:final_project/src/core/widgets/toast_notification.dart';
import 'package:final_project/src/features/resetpassword/presentation/cubit/resetpassword_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

import '../../../signin/presentation/widgets/passwordTextfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen(
      {super.key, required this.email, required this.token});
  final String email;
  final String token;
  @override
  Widget build(BuildContext context) {
    print(email);
    print(token);
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0, // Optional: Remove app bar shadow
          centerTitle: true, // Center the title
          title: const Text(
            'Reset Password',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        body: BlocListener<ResetpasswordCubit, ResetpasswordState>(
          listener: (context, state) {
            if (state is ResetpasswordSuccess) {
              toastNotification(
                  context,
                  state.response.message,
                  'Success',
                  Alignment.topCenter,
                  ToastificationType.success,
                  ToastificationStyle.fillColored,
                  Icon(Icons.verified),
                  Colors.white);

              GoRouter.of(context).go('/SigninScreen');
            } else if (state is ResetpasswordFailed) {
              toastNotification(
                  context,
                  state.message,
                  'Error',
                  Alignment.topCenter,
                  ToastificationType.error,
                  ToastificationStyle.fillColored,
                  Icon(Icons.error),
                  Colors.white);
            }
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Enter your email account to \n     reset your password',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                    ],
                  ),
                  const Image(
                      image: AssetImage('assets/images/reset_password.png')),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('New Password',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                  const SizedBox(
                    height: 5,
                  ),
                  PasswordTextField(
                    controller:
                        context.read<ResetpasswordCubit>().passwordController,
                    ingetText: 'Password',
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text('At least 8 characters',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Confirm Password',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                  const SizedBox(
                    height: 5,
                  ),
                  PasswordTextField(
                    controller: context
                        .read<ResetpasswordCubit>()
                        .confirmPasswordController,
                    ingetText: 'confirm Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () async {
                          try {
                            await context
                                .read<ResetpasswordCubit>()
                                .resetPassword(
                                    email: email,
                                    token: token,
                                    password: context
                                        .read<ResetpasswordCubit>()
                                        .passwordController
                                        .text,
                                    passwordConfirmation: context
                                        .read<ResetpasswordCubit>()
                                        .confirmPasswordController
                                        .text);
                          } catch (e) {
                            toastNotification(
                                context,
                                e.toString(),
                                'Error',
                                Alignment.topCenter,
                                ToastificationType.error,
                                ToastificationStyle.fillColored,
                                Icon(Icons.error),
                                Colors.white);
                          }
                        },
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        )),
                  )
                ],
              ),
            ),
          ),
        ) // Your body content here
        );
  }
}
