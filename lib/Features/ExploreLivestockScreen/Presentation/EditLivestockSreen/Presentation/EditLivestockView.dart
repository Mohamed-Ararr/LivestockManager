// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

import '../../../Data/Model/livestock_model.dart';
import 'EditLivestockViewBody.dart';

class EditLivestockView extends StatelessWidget {
  const EditLivestockView({super.key, required this.sheep, required this.farm});

  final LivestockModel sheep;
  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return EditLivestockViewBody(sheep: sheep, farm: farm);
  }
}
