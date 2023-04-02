// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../Core/Utils/fonts.dart';
import '../../../../Core/Utils/router.dart';
import '../../../../constValues.dart';

class AddNewFarmButton extends StatelessWidget {
  const AddNewFarmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(AppRouter.exploreLivestockView),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        decoration: BoxDecoration(
          color: AppColors.secColor,
          borderRadius: kBorderRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Add New Farm", style: AppFonts.regularTextWhite),
            const SizedBox(width: 10),
            const Icon(FontAwesomeIcons.circlePlus,
                size: 20, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
