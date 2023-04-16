// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../constValues.dart';
import '../../Data/Model/livestock_model.dart';
import 'LivestockCardInfo.dart';
import 'LivestockIconCard.dart';

class SheepCard extends StatelessWidget {
  const SheepCard({
    super.key,
    this.livestock,
    required this.onTap,
  });

  final LivestockModel? livestock;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.secColor.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
          // color: AppColors.secColor,
          // border: Border.all(
          //   color: Colors.black,
          // ),
          borderRadius: kBorderRadius,
        ),
        child: Row(
          children: [
            const SheepIconCard(),
            LivestockCardInfo(livestock: livestock),
          ],
        ),
      ),
    );
  }
}
