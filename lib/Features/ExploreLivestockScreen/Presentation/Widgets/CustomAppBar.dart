// ignore_for_file: file_names

import "package:flutter/material.dart";

import '../../../../constValues.dart';
import '../../../SplashScreen/Presentation/Widgets/logoImage.dart';
import "avatarWidget.dart";

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingRightLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          LogoImage(),
          Text(
            "Sheep Manager",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
          AvatarButton(),
        ],
      ),
    );
  }
}
