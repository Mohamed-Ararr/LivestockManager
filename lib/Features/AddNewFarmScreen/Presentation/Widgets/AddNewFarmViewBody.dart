// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:sheepmanager/Features/HomeScreen/Presentation/Widgets/CustomAppBar.dart";
import "package:sheepmanager/constValues.dart";

class AddNewFarmViewBody extends StatelessWidget {
  const AddNewFarmViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingRightLeft,
            child: Column(
              children: [
                CustomAppBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
