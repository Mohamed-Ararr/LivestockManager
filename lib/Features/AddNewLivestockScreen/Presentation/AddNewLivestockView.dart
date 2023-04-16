// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/AddNewLivestockScreen/Presentation/AddNewLivestockViewBody.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

class AddNewSheepView extends StatelessWidget {
  const AddNewSheepView({super.key, required this.farm});

  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return AddNewSheepViewBody(farm: farm);
  }
}
