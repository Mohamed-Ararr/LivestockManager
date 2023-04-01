// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../Core/Utils/fonts.dart';
import 'TableRowTitle.dart';

class StatsTable extends StatelessWidget {
  const StatsTable(
      {super.key,
      required this.maleNumb,
      required this.femaleNumb,
      required this.childrenNumb});

  final String maleNumb;
  final String femaleNumb;
  final String childrenNumb;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TableRowTitle(
              title: "Male(s)",
              color: AppColors.mainColor,
              style: AppFonts.regularRowTitle,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
              ),
            ),
            Container(
              width: 1,
              color: Colors.white,
            ),
            TableRowTitle(
              color: AppColors.mainColor,
              style: AppFonts.regularRowTitle,
              title: "Female(s)",
            ),
            Container(
              width: 1,
              color: Colors.white,
            ),
            TableRowTitle(
              color: AppColors.mainColor,
              title: "Children",
              style: AppFonts.regularRowTitle,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
              ),
            ),
          ],
        ),
        Row(
          children: [
            TableRowTitle(
              title: maleNumb,
              color: AppColors.greyColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
              ),
            ),
            Container(
              width: 1,
              color: Colors.white,
            ),
            TableRowTitle(
              color: AppColors.greyColor,
              title: femaleNumb,
            ),
            Container(
              width: 1,
              color: Colors.white,
            ),
            TableRowTitle(
              color: AppColors.greyColor,
              title: childrenNumb,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
