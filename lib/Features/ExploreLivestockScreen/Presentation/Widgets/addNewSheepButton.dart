
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/router.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../constValues.dart';

class AddNewSheepButton extends StatelessWidget {
  const AddNewSheepButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => GoRouter.of(context).push(AppRouter.addNewSheepView),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: kBorderRadius,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      child: const Text("Add New Sheep"),
    );
  }
}
