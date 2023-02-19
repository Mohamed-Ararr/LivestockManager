// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Model/sheep_model.dart';

import '../../../../constValues.dart';
import 'SheepCardInfo.dart';
import 'SheepIconCard.dart';

class SheepCard extends StatelessWidget {
  const SheepCard({
    super.key,
    required this.sheep,
    required this.onTap,
  });

  final SheepModel sheep;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          // border: Border.all(
          //   color: Colors.black,
          // ),
          borderRadius: kBorderRadius,
        ),
        child: Row(
          children: [
            const SheepIconCard(),
            SheepCardInfo(sheep: sheep),
          ],
        ),
      ),
    );
  }
}
