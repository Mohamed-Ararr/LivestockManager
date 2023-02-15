// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => GoRouter.of(context).pop(),
      icon: const Icon(FontAwesomeIcons.circleXmark),
    );
  }
}
