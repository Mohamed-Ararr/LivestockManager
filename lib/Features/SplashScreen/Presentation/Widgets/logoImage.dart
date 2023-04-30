// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(
        "assets/logoAlt.png",
        width: 60,
        height: 60,
      ),
    );
  }
}
