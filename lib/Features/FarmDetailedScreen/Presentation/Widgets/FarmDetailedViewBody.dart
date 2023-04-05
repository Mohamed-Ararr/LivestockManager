// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sheepmanager/Core/Utils/fonts.dart';
import 'package:sheepmanager/Features/ExploreLivestockScreen/Presentation/Bloc%20Manager/LivestockCubit/Livestock_cubit.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/Widgets/StatsTable.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/Widgets/consultFlockButton.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/Widgets/customFarmDetailedAppBar.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart';
import 'package:sheepmanager/constValues.dart';

import 'FarmTableInfo.dart';

class FarmDetailedViewBody extends StatefulWidget {
  const FarmDetailedViewBody({super.key, required this.farm});

  final FarmModel farm;

  @override
  State<FarmDetailedViewBody> createState() => _FarmDetailedViewBodyState();
}

class _FarmDetailedViewBodyState extends State<FarmDetailedViewBody> {
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
                CustomFarmDetailedAppBar(farm: widget.farm),
                const SizedBox(height: 20),
                Text("Farm Information", style: AppFonts.regularBlackTitle),
                const SizedBox(height: 10),
                FarmTableInfo(
                  farmID: widget.farm.farmID!,
                  farmOwner: widget.farm.owner!,
                  farmAddress: widget.farm.address!,
                  x: "hello",
                ),
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
