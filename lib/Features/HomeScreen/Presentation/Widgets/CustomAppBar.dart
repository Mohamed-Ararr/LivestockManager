// ignore_for_file: file_names

import "package:flutter/material.dart";

import '../../../../constValues.dart';
import '../../../SplashScreen/Presentation/Widgets/logoImage.dart';
import '../../../ExploreLivestockScreen/Presentation/Widgets/avatarWidget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingRightLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          LogoImage(color: Colors.transparent),
          Text(
            "Farm Care",
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
