// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/EditFarmScreen/Presentation/Widgets/EditFarmInputs.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

import '../../../../Core/Utils/backButton.dart';
import '../../../../Core/Utils/fonts.dart';
import '../../../../constValues.dart';

class EditFarmViewBody extends StatelessWidget {
  const EditFarmViewBody({super.key, required this.farm});

  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBackButton(),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    "Edit Farm Information",
                    style: AppFonts.regularBlackTitle,
                  ),
                ),
                const SizedBox(height: 20),
                EditFarmInputs(farm: farm),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
