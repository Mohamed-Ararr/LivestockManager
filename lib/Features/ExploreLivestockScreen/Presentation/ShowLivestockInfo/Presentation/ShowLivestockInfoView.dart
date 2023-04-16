// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

import '../../../Data/Model/livestock_model.dart';
import 'ShowLivestockViewBody.dart';

class ShowLivestockInfoView extends StatelessWidget {
  const ShowLivestockInfoView(
      {super.key, required this.sheep, required this.farm});

  final LivestockModel sheep;
  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return ShowLivestockInfoViewBody(sheep: sheep, farm: farm);
  }
}
