// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/SplashScreen/Presentation/Widgets/logoImage.dart';

import 'Widgets/appSlogan.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              LogoImage(),
              SizedBox(height: 20),
              AppSlogan(),
            ],
          ),
        ),
      ),
    );
  }
}
