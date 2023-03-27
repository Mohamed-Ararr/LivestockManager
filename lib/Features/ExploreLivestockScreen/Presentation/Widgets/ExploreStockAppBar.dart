// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:go_router/go_router.dart";

import "../../../../Core/Utils/colors.dart";
import "../../../../Core/Utils/searchDele.dart";

class ExploreStockAppBar extends StatelessWidget {
  const ExploreStockAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 5),
          child: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(FontAwesomeIcons.circleXmark, size: 28),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchBar());
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
