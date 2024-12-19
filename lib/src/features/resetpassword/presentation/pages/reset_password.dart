import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../signin/presentation/widgets/passwordTextfield.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        body: SingleChildScrollView(
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
                      onPressed: () {
                        GoRouter.of(context).go('/home');
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
        ) // Your body content here
        );
  }
}
