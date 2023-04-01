// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/router.dart';
import 'package:sheepmanager/constValues.dart';

import 'FarmShortInfo.dart';
import 'TapMoreButton.dart';

class FarmShortBox extends StatelessWidget {
  const FarmShortBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 9,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: InkWell(
        onTap: () => GoRouter.of(context).push(AppRouter.farmDetailedView),
        borderRadius: kBorderRadius,
        child: Column(
          children: const [
            FarmShortInfo(),
            TapMoreButton(),
          ],
        ),
      ),
    );
  }
}
