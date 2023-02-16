// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'colors.dart';
import '../../constValues.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    required this.widg,
    required this.keyboardType,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final Widget widg;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: widg,
        labelStyle: TextStyle(
          color: AppColors.secColor,
        ),
        labelText: label,
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderRadius: kBorderRadius,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: kBorderRadius,
          borderSide: BorderSide(
            color: AppColors.mainColor,
          ),
        ),
      ),
    );
  }
}
