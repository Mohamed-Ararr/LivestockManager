// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../Data/Model/livestock_model.dart';
import 'ShowSheepViewBody.dart';

class ShowSheepInfoView extends StatelessWidget {
  const ShowSheepInfoView({super.key, required this.sheep});

  final LivestockModel sheep;

  @override
  Widget build(BuildContext context) {
    return ShowSheepInfoViewBody(sheep: sheep);
  }
}
