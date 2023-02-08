// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheepmanager/Core/Utils/colors.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Widgets/CustomAppBar.dart';
import 'package:sheepmanager/constValues.dart';

import 'Widgets/customText.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: Column(
            children: const [
              CustomAppBar(),
              CustomTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
