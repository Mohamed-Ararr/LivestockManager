// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/colors.dart';
import 'package:sheepmanager/Core/Utils/fonts.dart';
import 'package:sheepmanager/Features/SplashScreen/Presentation/Widgets/appTagLine.dart';
import 'package:sheepmanager/Features/SplashScreen/Presentation/Widgets/logoImage.dart';

import '../../../Core/Utils/router.dart';
import 'Widgets/appSlogan.dart';
import 'Widgets/logo&title.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => GoRouter.of(context).pushReplacement(AppRouter.homeView),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Spacer(),
              LogoTitleSubtitle(),
              SizedBox(height: 20),
              Spacer(),
              AppTagLine(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
