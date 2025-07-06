import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/features/passwordmanager/presentation/bloc/passwordmanager_bloc.dart';
import 'package:final_project/src/features/signin/presentation/widgets/passwordTextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/utils/validator.dart';
import '../../../../core/widgets/toast_notification.dart';

class PasswordManagerScreen extends StatelessWidget {
  PasswordManagerScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController currentPasswordController =
      TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
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
                  'Password Manager',
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
              child: Form(
                key: _formKey,
                child: BlocProvider.value(
                  value: sl<PasswordmanagerBloc>(),
                  child:
                      BlocListener<PasswordmanagerBloc, PasswordmanagerState>(
                    listenWhen: (previous, current) =>
                        current is PasswordChanged || current is Error,
                    listener: (context, state) {
                      if (state is PasswordChanged) {
                        toastNotification(
                            context,
                            state.passwordresponse.message ??
                                'Password changed successfully',
                            'Success',
                            Alignment.topCenter,
                            ToastificationType.success,
                            ToastificationStyle.fillColored,
                            Icon(Icons.check_circle),
                            Colors.green);
                      } else if (state is Error) {
                        toastNotification(
                            context,
                            'Error Changing Password',
                            'Error',
                            Alignment.topCenter,
                            ToastificationType.error,
                            ToastificationStyle.fillColored,
                            Icon(Icons.error),
                            Colors.red);
                      }
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Password',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        PasswordTextField(
                          ingetText: 'Password',
                          controller: currentPasswordController,
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(color: Colors.blue),
                                )),
                          ],
                        ),
                        Text(
                          'New Password',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 5),
                        PasswordTextField(
                          validator: (value) =>
                              RegexValidator.validatePasswordForForm(
                                  value ?? ''),
                          ingetText: 'New Password',
                          controller: newPasswordController,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Confirm Password',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        PasswordTextField(
                          validator: (value) =>
                              value != newPasswordController.text
                                  ? 'Passwords do not match'
                                  : null,
                          ingetText: 'Confirm Password',
                          controller: confirmPasswordController,
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Color(0xff468ED1)),
                              padding: WidgetStateProperty.all(
                                  EdgeInsets.symmetric(horizontal: 100)),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              minimumSize: WidgetStateProperty.all(
                                  Size(double.infinity, 60)),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                sl<PasswordmanagerBloc>().add(
                                  PasswordmanagerEvent.changePassword(
                                    oldPassword: currentPasswordController.text,
                                    newPassword: newPasswordController.text,
                                    confirmPassword:
                                        confirmPasswordController.text,
                                  ),
                                );
                                print('Password changed successfully');
                              }
                            },
                            child: Text(
                              'Change Password',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
