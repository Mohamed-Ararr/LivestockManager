// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../constValues.dart';

class SheepIconCard extends StatelessWidget {
  const SheepIconCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        // borderRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(10),
        //   bottomLeft: Radius.circular(10),
        // ),
        // borderRadius: BorderRadius.circular(100),
        borderRadius: BorderRadius.circular(15),
        color: AppColors.mainColor,
      ),
      child: SvgPicture.asset(
        logo,
        color: Colors.black,
      ),
    );
  }
}
