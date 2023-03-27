// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'FarmShortInfo.dart';
import 'TapMoreButton.dart';

class FarmShortBox extends StatelessWidget {
  const FarmShortBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: const [
          FarmShortInfo(),
          TapMoreButton(),
        ],
      ),
    );
  }
}
