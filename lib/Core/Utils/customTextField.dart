// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'colors.dart';
import '../../constValues.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.label,
    required this.hint,
    required this.keyboardType,
    this.widg,
    this.onChanged,
    this.controller,
    this.maxLength,
    this.enabled = true,
    this.filled = false,
    this.fillColor,
  });

  final String? label;
  final String hint;
  final Widget? widg;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final Function(String?)? onChanged;
  final int? maxLength;
  final bool? enabled;
  final bool? filled;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      maxLength: maxLength,
      textCapitalization: TextCapitalization.words,
      controller: controller,
      onChanged: onChanged,
      validator: (value) {
        if (value != null && value.isNotEmpty) {
          return null;
        } else {
          return "Required field. Fill it, please!";
        }
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillColor,
        suffixIcon: widg,
        labelStyle: const TextStyle(
          color: Colors.black,
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
        errorBorder: OutlineInputBorder(
          borderRadius: kBorderRadius,
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: kBorderRadius,
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: kBorderRadius,
        ),
      ),
    );
  }
}
