// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Core/Utils/fonts.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/Widgets/customFarmDetailedAppBar.dart';
import 'package:sheepmanager/constValues.dart';

import 'FarmTableInfo.dart';
import 'RowContent.dart';
import 'RowTitle.dart';

class FarmDetailedViewBody extends StatelessWidget {
  const FarmDetailedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomFarmDetailedAppBar(),
                const SizedBox(height: 20),
                Text("Farm Information", style: AppFonts.regularBlackTitle),
                const SizedBox(height: 10),
                const FarmTableInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
