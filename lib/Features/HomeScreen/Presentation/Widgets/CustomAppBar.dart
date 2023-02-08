// ignore_for_file: file_names

import "package:flutter/material.dart";

import "../../../SplashScreen/Presentation/Widgets/logoImage.dart";
import "avatarWidget.dart";

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        LogoImage(),
        AvatarButton(),
      ],
    );
  }
}
