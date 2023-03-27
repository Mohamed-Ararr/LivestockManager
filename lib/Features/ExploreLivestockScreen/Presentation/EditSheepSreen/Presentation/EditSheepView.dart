// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../Data/Model/sheep_model.dart';
import 'EditSheepViewBody.dart';

class EditSheepView extends StatelessWidget {
  const EditSheepView({super.key, required this.sheep});

  final SheepModel sheep;

  @override
  Widget build(BuildContext context) {
    return EditSheepViewBody(sheep: sheep);
  }
}
