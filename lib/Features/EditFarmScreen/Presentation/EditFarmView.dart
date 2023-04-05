// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

import 'Widgets/EditFarmViewBody.dart';

class EditFarmView extends StatelessWidget {
  const EditFarmView({super.key, required this.farm});

  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return EditFarmViewBody(farm: farm);
  }
}
