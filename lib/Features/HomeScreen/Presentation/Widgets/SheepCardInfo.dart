// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SheepCardInfo extends StatelessWidget {
  const SheepCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("ID: 10001"),
            const SizedBox(height: 5),
            const Text("State: Available"),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Tap For More Information"),
                Icon(
                  FontAwesomeIcons.anglesRight,
                  size: 18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
