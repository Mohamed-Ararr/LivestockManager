// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/fonts.dart';
import 'package:sheepmanager/Features/ExploreLivestockScreen/Data/Model/livestock_model.dart';
import 'package:sheepmanager/Features/ExploreLivestockScreen/Presentation/Bloc%20Manager/LivestockCubit/Livestock_cubit.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/Widgets/StatsTable.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/Widgets/consultFlockButton.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/Widgets/customFarmDetailedAppBar.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../../Core/Utils/router.dart';
import 'FarmTableInfo.dart';

class FarmDetailedViewBody extends StatefulWidget {
  const FarmDetailedViewBody({super.key, required this.farm});

  final FarmModel farm;

  @override
  State<FarmDetailedViewBody> createState() => _FarmDetailedViewBodyState();
}

class _FarmDetailedViewBodyState extends State<FarmDetailedViewBody> {
  List<List<int>> livestockStats(FarmModel farm) {
    int cowMales = 0;
    int cowFemales = 0;
    int cowChildren = 0;
    int sheepChildren = 0;
    int sheepFemales = 0;
    int sheepMales = 0;
    var castedFarm = widget.farm.livestockList?.map((item) {
      return item as LivestockModel;
    }).toList();

    if (castedFarm?.length == null) {
    } else {
      for (int i = 0; i < castedFarm!.length; i++) {
        if (castedFarm[i].type == "Cow") {
          cowChildren += castedFarm[i].children!;
          switch (castedFarm[i].sexe) {
            case "Male":
              cowMales++;
              break;
            case "Female":
              cowFemales++;
              break;
          }
        } else {
          sheepChildren += castedFarm[i].children!;
          switch (castedFarm[i].sexe) {
            case "Male":
              sheepMales++;
              break;
            case "Female":
              sheepFemales++;
              break;
          }
        }
      }
    }
    return [
      [sheepMales, sheepFemales, sheepChildren],
      [cowMales, cowFemales, cowChildren]
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ConsultButton(
        onTap: () => GoRouter.of(context)
            .push(AppRouter.exploreLivestockView, extra: widget.farm),
      ),
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
                StatsTable(
                  maleNumb: "${livestockStats(widget.farm)[0][0]}",
                  femaleNumb: "${livestockStats(widget.farm)[0][1]}",
                  childrenNumb: "${livestockStats(widget.farm)[0][2]}",
                ),
                const SizedBox(height: 20),
                Text("Cows Statistics", style: AppFonts.regularBlackTitle),
                const SizedBox(height: 10),
                StatsTable(
                  maleNumb: "${livestockStats(widget.farm)[1][0]}",
                  femaleNumb: "${livestockStats(widget.farm)[1][1]}",
                  childrenNumb: "${livestockStats(widget.farm)[1][2]}",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
