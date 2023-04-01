// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheepmanager/Core/Utils/fonts.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/Widgets/StatsTable.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/Widgets/consultFlockButton.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/Widgets/customFarmDetailedAppBar.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../../Core/Utils/colors.dart';
import 'FarmTableInfo.dart';

class FarmDetailedViewBody extends StatelessWidget {
  const FarmDetailedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const ConsultButton(),
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
                const SizedBox(height: 20),
                Text("Sheep Statistics", style: AppFonts.regularBlackTitle),
                const SizedBox(height: 10),
                const StatsTable(
                    maleNumb: "2", femaleNumb: "4", childrenNumb: "6"),
                const SizedBox(height: 20),
                Text("Cows Statistics", style: AppFonts.regularBlackTitle),
                const SizedBox(height: 10),
                const StatsTable(
                    maleNumb: "1", femaleNumb: "3", childrenNumb: "6"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
