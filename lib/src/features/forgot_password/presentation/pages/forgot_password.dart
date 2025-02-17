import 'package:final_project/src/core/widgets/toast_notification.dart';
import 'package:final_project/src/features/forgot_password/presentation/cubit/forgot_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
      ),
      body: BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
        listener: (context, state) {
          if (state is ForgotPasswordSuccess) {
            toastNotification(
                context,
                state.response.message,
                'نجاح',
                Alignment.topCenter,
                ToastificationType.success,
                ToastificationStyle.fillColored,
                Icon(Icons.verified),
                Colors.white);
            GoRouter.of(context).push('/VerifictoinScreen',
                extra:
                    context.read<ForgotPasswordCubit>().emailController.text);
          } else if (state is ForgotPasswordError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 100),
          child: Column(
            children: [
              const Text('Forgot Password',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              const Text(
                  'Enter your email account to \n     reset your password',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey)),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: context.read<ForgotPasswordCubit>().emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () async {
                      try {
                        await context
                            .read<ForgotPasswordCubit>()
                            .forgotPassword(
                                email: context
                                    .read<ForgotPasswordCubit>()
                                    .emailController
                                    .text);
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(e.toString())));
                      }
                    },
                    child: const Text(
                      'Reset Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
