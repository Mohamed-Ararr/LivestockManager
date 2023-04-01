// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../constValues.dart';
import 'FarmShortBox.dart';

class FarmListView extends StatelessWidget {
  const FarmListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: kPaddingRightLeft,
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const FarmShortBox();
      },
    );
  }
}
