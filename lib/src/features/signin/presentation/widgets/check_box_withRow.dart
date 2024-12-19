import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckBoxWithrow extends StatefulWidget {
  const CheckBoxWithrow(
      {super.key, required this.ischecked, required this.onChanged});
  final bool ischecked;
  final void Function(bool?) onChanged;

  @override
  State<CheckBoxWithrow> createState() => _CheckBoxWithrowState();
}

class _CheckBoxWithrowState extends State<CheckBoxWithrow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            activeColor: Colors.white,
            checkColor: Colors.black,
            splashRadius: 10,
            side: BorderSide(color: Colors.black, width: 1),
            value: widget.ischecked,
            onChanged: (bool? value) {
              setState(() {
                widget.onChanged(value);
              });
            }),
        const Text(
          'Remember me',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push('/ForgotPasswordScreen');
          },
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
