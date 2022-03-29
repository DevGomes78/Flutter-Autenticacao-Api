import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String? labelText;
  String? hintText;
  Widget? icon;
  bool obscureText;
  FormFieldValidator<String>? validator;
  TextEditingController? controller;

  TextWidget(
    this.labelText,
    this.hintText, {
    this.icon,
    this.obscureText = false,
    this.validator,
        this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        prefixIcon: icon,
      ),
      obscureText: obscureText,
      validator: validator,
      controller: controller,
    );
  }
}
