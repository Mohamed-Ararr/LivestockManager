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
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(
          "assets/NewLogo.png",
          width: 90,
          height: 90,
          color: Colors.white,
        ),
      ),
    );
  }
}
