// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../Core/Utils/fonts.dart';
import '../../../../constValues.dart';

class ConsultButton extends StatelessWidget {
  const ConsultButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.secColor,
        borderRadius: kBorderRadius,
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Consult Flock", style: AppFonts.regularTextWhite),
            const SizedBox(width: 10),
            const Icon(FontAwesomeIcons.circleArrowRight,
                size: 20, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
