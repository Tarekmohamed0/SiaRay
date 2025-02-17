import 'package:final_project/src/features/signin/presentation/widgets/passwordTextfield.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/validator.dart';
import '../pages/signin_screen.dart';

class HomeFormField extends StatelessWidget {
  const HomeFormField({
    super.key,
    required this.formKey,
    required this.widget,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final SigninScreen widget;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                // Check if value is null or empty
                if (value == null || value.isEmpty) {
                  return 'Email cannot be empty';
                }

                // Validate the email
                String? validEmail = RegexValidator.validateEmail(value);
                if (validEmail != 'Valid email') {
                  return validEmail; // Return the error message
                }
                return null; // Valid email
              },
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PasswordTextField(
              // validator: (value) {
              //   // // Check if value is null or empty
              //   // if (value == null || value.isEmpty) {
              //   //   return 'Password cannot be empty';
              //   // }

              //   var passwordValidation =
              //       RegexValidator.validatePassword(value!);
              //   if (!passwordValidation['isValid']) {
              //     return passwordValidation['messages']
              //         .join('\n'); // Return all error messages
              //   }
              //   return null; // Return null if valid
              // },
              controller: passwordController,
              ingetText: 'password',
            ),
          ],
        ));
  }
}
