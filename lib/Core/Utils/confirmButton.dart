// ignore_for_file: file_names

import "package:flutter/material.dart";

import "../../constValues.dart";
import "colors.dart";

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mainColor,
        elevation: 0,
        minimumSize: Size(MediaQuery.of(context).size.width, 50),
        shape: RoundedRectangleBorder(
          borderRadius: kBorderRadius,
        ),
      ),
      onPressed: () {},
      child: const Text(
        "Confirm",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
