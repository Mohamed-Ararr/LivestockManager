// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Core/Utils/fonts.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../constValues.dart';

class SearchCardLivestock extends StatelessWidget {
  const SearchCardLivestock({super.key, required this.farm});

  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingRightLeft,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.secColor,
          borderRadius: kBorderRadius,
        ),
        child: Text(
          '${farm.owner}\'s Farm',
          style: AppFonts.regularTextWhiteBold,
        ),
      ),
    );
  }
}
