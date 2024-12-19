// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  PasswordTextField({
    Key? key,
    required this.ingetText,
    this.controller,
    this.validator,
  }) : super(key: key);
  final String ingetText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.visibility)),
        prefixIcon: const Icon(Icons.lock_outline),
        hintText: ingetText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
