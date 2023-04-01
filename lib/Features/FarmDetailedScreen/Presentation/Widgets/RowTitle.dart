// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Core/Utils/fonts.dart';

import '../../../../Core/Utils/colors.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({super.key, this.borderRadius});

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: AppColors.mainColor.withAlpha(200),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text("Title",
          style: AppFonts.regularRowTitle, textAlign: TextAlign.center),
    );
  }
}
