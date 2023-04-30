// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/Utils/fonts.dart';
import 'appSlogan.dart';
import 'logoImage.dart';

class LogoTitleSubtitle extends StatelessWidget {
  const LogoTitleSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LogoImage(),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSlogan(),
            Text("Best for Livestock care", style: AppFonts.smallTextBlack),
          ],
        ),
      ],
    );
  }
}
