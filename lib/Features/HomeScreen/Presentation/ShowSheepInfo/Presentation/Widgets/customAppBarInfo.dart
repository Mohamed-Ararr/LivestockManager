// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Model/sheep_model.dart';

import '../../../../../../Core/Utils/backButton.dart';
import '../../../../../../Core/Utils/router.dart';

class CustomAppBarInfo extends StatelessWidget {
  const CustomAppBarInfo({super.key, required this.sheep});

  final SheepModel sheep;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomBackButton(),
        IconButton(
          onPressed: () =>
              GoRouter.of(context).push(AppRouter.editSheepView, extra: sheep),
          icon: const Icon(FontAwesomeIcons.penToSquare),
        ),
      ],
    );
  }
}
