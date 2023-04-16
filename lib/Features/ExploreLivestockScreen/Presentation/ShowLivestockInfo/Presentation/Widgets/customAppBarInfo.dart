// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

import '../../../../../../Core/Utils/backButton.dart';
import '../../../../../../Core/Utils/router.dart';
import '../../../../Data/Model/livestock_model.dart';

class CustomAppBarInfo extends StatelessWidget {
  const CustomAppBarInfo({super.key, required this.sheep, required this.farm});

  final LivestockModel sheep;
  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomBackButton(),
        IconButton(
          onPressed: () =>
              GoRouter.of(context).push(AppRouter.editSheepView, extra: {
            "livestock": sheep,
            "farm": farm,
          }),
          icon: const Icon(FontAwesomeIcons.penToSquare),
        ),
      ],
    );
  }
}
