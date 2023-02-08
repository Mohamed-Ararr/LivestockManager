// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../constValues.dart';

class AvatarButton extends StatelessWidget {
  const AvatarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColors.mainColor.withAlpha(100),
      ),
      child: SvgPicture.asset(avatar),
    );
  }
}
