// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/Utils/colors.dart';
import 'FarmBoxAttribute.dart';

class FarmShortInfo extends StatelessWidget {
  const FarmShortInfo({super.key});

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
        children: const [
          FarmBoxAttribute(
            title: "Farm ID",
            input: "1024648",
          ),
          SizedBox(height: 15),
          FarmBoxAttribute(
            title: "Farm Owner",
            input: "Mohamed arar",
          ),
          SizedBox(height: 15),
          FarmBoxAttribute(
            title: "Farm Address",
            input: "Regai Bachir",
          ),
        ],
      ),
    );
  }
}
