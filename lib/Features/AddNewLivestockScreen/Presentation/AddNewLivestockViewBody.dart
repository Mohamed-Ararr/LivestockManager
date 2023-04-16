// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Core/Utils/backButton.dart';
import 'package:sheepmanager/Features/AddNewLivestockScreen/Presentation/Widgets/newLivestockInputs.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/constValues.dart';

import '../../ExploreLivestockScreen/Data/Model/livestock_model.dart';

class AddNewSheepViewBody extends StatelessWidget {
  const AddNewSheepViewBody({super.key, required this.farm});

  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: kPaddingRightLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBackButton(),
                const Center(
                  child: Text(
                    "Add New Sheep Forum",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                const SizedBox(height: 25),
                NewLivestockInputs(farm: farm),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
