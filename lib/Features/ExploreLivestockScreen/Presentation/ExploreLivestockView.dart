// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

import 'Widgets/ExploreLivestockViewBody.dart';

class ExploreLivestockView extends StatelessWidget {
  const ExploreLivestockView({super.key, required this.farm});

  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return ExploreLivestockViewBody(farm: farm);
  }
}
