import 'package:flutter/material.dart';

import '../../../signin/presentation/widgets/passwordTextfield.dart';

class SignUpFormField extends StatelessWidget {
  const SignUpFormField(
      {super.key,
      required this.nameController,
      required this.emailController,
      required this.passwordController});
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: nameController,
          decoration: const InputDecoration(
            hintText: 'User name',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          controller: emailController,
          decoration: const InputDecoration(
            hintText: 'Email',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        PasswordTextField(
          controller: passwordController,
          ingetText: 'Password',
        ),
        const SizedBox(
          height: 20,
        ),
        PasswordTextField(
          ingetText: 'Confirm Password',
          controller: passwordController,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
