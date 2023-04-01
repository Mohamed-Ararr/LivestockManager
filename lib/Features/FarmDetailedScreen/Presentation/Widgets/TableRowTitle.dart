// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TableRowTitle extends StatelessWidget {
  const TableRowTitle(
      {super.key,
      this.borderRadius,
      required this.title,
      this.color,
      this.style});

  final BorderRadiusGeometry? borderRadius;
  final String title;
  final Color? color;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 32) / 3,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: color,
      ),
      child: Text(title, style: style, textAlign: TextAlign.center),
    );
  }
}
