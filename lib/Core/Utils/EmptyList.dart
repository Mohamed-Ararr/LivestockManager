// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constValues.dart';
import 'colors.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        SvgPicture.asset(
          emptySvg,
          color: AppColors.mainColor,
          width: 150,
        ),
        const SizedBox(height: 30),
        const Center(
            child: Text(
          "¯\\_(ツ)_/¯\n\nEmpty list, use the button bellow",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ],
    );
  }
}
