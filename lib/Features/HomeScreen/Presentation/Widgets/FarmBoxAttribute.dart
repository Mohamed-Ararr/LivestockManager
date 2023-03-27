import "package:flutter/material.dart";
import "package:sheepmanager/Core/Utils/fonts.dart";

class FarmBoxAttribute extends StatelessWidget {
  const FarmBoxAttribute({super.key, required this.title, required this.input});

  final String title;
  final String input;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppFonts.farmBoxTitle),
        const SizedBox(height: 3),
        Text(input, style: AppFonts.farmBoxInput),
      ],
    );
  }
}
