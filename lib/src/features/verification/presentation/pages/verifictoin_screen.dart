import 'package:final_project/src/core/widgets/toast_notification.dart';
import 'package:final_project/src/features/verification/presentation/cubit/verification_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:toastification/toastification.dart';

class VerifictoinScreen extends StatefulWidget {
  const VerifictoinScreen({super.key, required this.email});
  final String email;

  @override
  State<VerifictoinScreen> createState() => _VerifictoinScreenState();
}

class _VerifictoinScreenState extends State<VerifictoinScreen> {
  String token = '';

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
      body: BlocListener<VerificationCubit, VerificationState>(
        listener: (context, state) {
          if (state is VerificationSuccess) {
            toastNotification(
                context,
                state.response.message,
                'نجاح',
                Alignment.topCenter,
                ToastificationType.success,
                ToastificationStyle.fillColored,
                Icon(Icons.verified),
                Colors.white);
            GoRouter.of(context).push('/ResetPasswordScreen',
                extra: {'email': widget.email, 'token': token});
          } else if (state is VerificationError) {
            toastNotification(
                context,
                state.message,
                'خطأ',
                Alignment.topCenter,
                ToastificationType.error,
                ToastificationStyle.fillColored,
                Icon(Icons.error),
                Colors.white);
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 80),
          child: Column(
            children: [
              const Text('Otp Verification',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              const Text(
                  'Enter the code sent to your email:\n       t********8@gmail.com',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey)),
              const SizedBox(
                height: 40,
              ),
              Form(
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  onCompleted: (value) {
                    setState(() {
                      token = value;
                    });
                    print(value);
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 70,
                    fieldWidth: 70,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    activeColor: Colors.green,
                    inactiveColor: Colors.grey,
                  ),
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
                            .read<VerificationCubit>()
                            .otpVerification(email: widget.email, token: token);
                      } catch (e) {
                        toastNotification(
                            context,
                            e.toString(),
                            'خطأ',
                            Alignment.topCenter,
                            ToastificationType.error,
                            ToastificationStyle.fillColored,
                            Icon(Icons.error),
                            Colors.white);
                      }
                    },
                    child: const Text(
                      'Verify',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              SizedBox(
                height: 10.r,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Resend Code',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const Text(' in 00:30',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
