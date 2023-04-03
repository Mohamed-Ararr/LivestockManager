// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../../Core/Utils/colors.dart';
import '../../../../../../constValues.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key, required this.infoTitle, required this.infoContent});

  final String infoTitle;
  final String infoContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        color: AppColors.mainColor,
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                infoTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 212, 212, 212),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(infoContent),
            ),
          ),
        ],
      ),
    );
  }
}
