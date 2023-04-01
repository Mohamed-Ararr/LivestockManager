// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../Data/Model/livestock_model.dart';
import 'ShowLivestockViewBody.dart';

class ShowLivestockInfoView extends StatelessWidget {
  const ShowLivestockInfoView({super.key, required this.sheep});

  final LivestockModel sheep;

  @override
  Widget build(BuildContext context) {
    return ShowLivestockInfoViewBody(sheep: sheep);
  }
}
