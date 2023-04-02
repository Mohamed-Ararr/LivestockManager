// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:sheepmanager/Core/Utils/confirmButton.dart";
import "package:sheepmanager/Core/Utils/customTextField.dart";
import "package:sheepmanager/Core/Utils/fonts.dart";
import "package:sheepmanager/Features/AddNewFarmScreen/Presentation/Widgets/AddNewFarmAppBar.dart";
import "package:sheepmanager/Features/AddNewFarmScreen/Presentation/Widgets/AddNewFarmInputs.dart";
import "package:sheepmanager/constValues.dart";

class AddNewFarmViewBody extends StatelessWidget {
  const AddNewFarmViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: Column(
            children: [
              const AddNewFarmAppBar(),
              const SizedBox(height: 20),
              Text("Add New Farm", style: AppFonts.regularBlackTitle),
              const SizedBox(height: 20),
              const AddNewFarmInputs(),
            ],
          ),
        ),
      ),
    );
  }
}
