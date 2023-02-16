// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../../../Core/Utils/backButton.dart';
import 'Widgets/editSheepInputs.dart';

class EditSheepViewBody extends StatelessWidget {
  const EditSheepViewBody({super.key});

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
              children: const [
                CustomBackButton(),
                Center(
                  child: Text(
                    "Edit Sheep Information",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(height: 20),
                EditSheepInputs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
