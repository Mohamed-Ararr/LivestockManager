// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/Utils/colors.dart';
import 'FarmBoxAttribute.dart';

class FarmShortInfo extends StatelessWidget {
  const FarmShortInfo(
      {super.key,
      required this.farmID,
      required this.farmOwner,
      required this.farmAddress});

  final String farmID;
  final String farmOwner;
  final String farmAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: AppColors.greyColor,
      ),
      // margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FarmBoxAttribute(
            title: "Farm ID",
            input: farmID,
          ),
          const SizedBox(height: 15),
          FarmBoxAttribute(
            title: "Farm Owner",
            input: farmOwner,
          ),
          const SizedBox(height: 15),
          FarmBoxAttribute(
            title: "Farm Address",
            input: farmAddress,
          ),
        ],
      ),
    );
  }
}
