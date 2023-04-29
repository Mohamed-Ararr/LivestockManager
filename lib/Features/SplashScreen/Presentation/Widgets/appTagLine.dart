// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppTagLine extends StatelessWidget {
  const AppTagLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: const Text(
        "Manage your farms, from your phone, with ease!",
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
