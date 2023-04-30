// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../Core/Utils/colors.dart';

import '../../../../constValues.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
