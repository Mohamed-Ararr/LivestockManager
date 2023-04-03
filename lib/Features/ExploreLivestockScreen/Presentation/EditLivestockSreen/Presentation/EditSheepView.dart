// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../Data/Model/livestock_model.dart';
import 'EditSheepViewBody.dart';

class EditLivestockView extends StatelessWidget {
  const EditLivestockView({super.key, required this.sheep});

  final LivestockModel sheep;

  @override
  Widget build(BuildContext context) {
    return EditLivestockViewBody(sheep: sheep);
  }
}
