// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/router.dart';

import '../../../../constValues.dart';
import 'SheepCardInfo.dart';
import 'SheepIconCard.dart';

class SheepCard extends StatelessWidget {
  const SheepCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(AppRouter.editSheepView),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          // border: Border.all(
          //   color: Colors.black,
          // ),
          borderRadius: kBorderRadius,
        ),
        child: Row(
          children: const [
            SheepIconCard(),
            SheepCardInfo(),
          ],
        ),
      ),
    );
  }
}
