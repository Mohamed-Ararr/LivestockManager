// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/router.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: const Icon(FontAwesomeIcons.xmark),
        ),
        IconButton(
          onPressed: () =>
              GoRouter.of(context).push(AppRouter.profileForumView),
          icon: const Icon(FontAwesomeIcons.penToSquare),
        ),
      ],
    );
  }
}
