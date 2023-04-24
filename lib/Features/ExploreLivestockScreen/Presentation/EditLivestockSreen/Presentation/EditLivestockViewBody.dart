// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../../../Core/Utils/backButton.dart';
import '../../../Data/Model/livestock_model.dart';
import 'Widgets/editLivestockInputs.dart';

class EditLivestockViewBody extends StatelessWidget {
  const EditLivestockViewBody(
      {super.key, required this.sheep, required this.farm});

  final LivestockModel sheep;
  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBackButton(),
                const Center(
                  child: Text(
                    "Edit Sheep Information",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                const SizedBox(height: 20),
                EditLivestockInputs(sheep: sheep, farm: farm),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
