// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../../../Core/Utils/backButton.dart';
import '../../../Data/Model/sheep_model.dart';
import 'Widgets/editSheepInputs.dart';

class EditSheepViewBody extends StatelessWidget {
  const EditSheepViewBody({super.key, required this.sheep});

  final SheepModel sheep;

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
                EditSheepInputs(sheep: sheep),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
