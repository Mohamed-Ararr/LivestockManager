// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Core/Utils/fonts.dart';

import '../../../../Core/Utils/colors.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({super.key, this.borderRadius, required this.title});

  final BorderRadiusGeometry? borderRadius;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: AppColors.mainColor,
      ),
      padding: const EdgeInsets.symmetric(vertical: 21),
      child: Text(
        title,
        style: AppFonts.regularRowTitle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
