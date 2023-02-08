// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheepmanager/Core/Utils/colors.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Widgets/avatarWidget.dart';
import 'package:sheepmanager/constValues.dart';

import '../../SplashScreen/Presentation/Widgets/logoImage.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [LogoImage(), AvatarButton()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
