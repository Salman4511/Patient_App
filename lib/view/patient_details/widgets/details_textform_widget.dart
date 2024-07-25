import 'package:flutter/material.dart';

class DetailsTextFormWidget extends StatelessWidget {
  final String text;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final TextInputType? keyboardType;
  const DetailsTextFormWidget({
    super.key,
    required this.text,
    this.suffixIcon,
    required this.controller,
    required this.validator,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: Colors.grey.shade100,
        filled: true,
        hintText: text,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
