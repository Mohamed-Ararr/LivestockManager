// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Model/sheep_model.dart';

import 'ShowSheepViewBody.dart';

class ShowSheepInfoView extends StatelessWidget {
  const ShowSheepInfoView({super.key, required this.sheep});

  final SheepModel sheep;

  @override
  Widget build(BuildContext context) {
    return ShowSheepInfoViewBody(sheep: sheep);
  }
}
