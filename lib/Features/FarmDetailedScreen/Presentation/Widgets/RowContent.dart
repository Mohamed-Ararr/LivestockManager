// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Core/Utils/fonts.dart';

class RowContent extends StatelessWidget {
  const RowContent({super.key, this.borderRadius, required this.content});

  final BorderRadiusGeometry? borderRadius;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 212, 212, 212),
        borderRadius: borderRadius,
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Text(
        content,
        style: AppFonts.regularTextBlack,
      ),
    );
  }
}
