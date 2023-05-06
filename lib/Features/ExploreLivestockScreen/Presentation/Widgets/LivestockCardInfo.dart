// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Data/Model/livestock_model.dart';
import '../../../../Core/Utils/fonts.dart';

class LivestockCardInfo extends StatelessWidget {
  const LivestockCardInfo({super.key, required this.livestock});

  final LivestockModel? livestock;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ID: ${livestock?.id}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Type: ${livestock?.type}",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tap For More Info",
                  style: AppFonts.regularTextBlack,
                ),
                const Icon(
                  FontAwesomeIcons.anglesRight,
                  size: 18,
                  // color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
