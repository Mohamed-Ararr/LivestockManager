// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:go_router/go_router.dart";
import "package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart";

import "../../../../Core/Utils/colors.dart";
import "../../../../Core/Utils/searchDele.dart";

class ExploreStockAppBar extends StatelessWidget {
  const ExploreStockAppBar({super.key, required this.farm});
  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 5),
          child: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(FontAwesomeIcons.circleXmark),
          ),
        ),
        Container(
          width: 50,
          height: 45,
          margin: const EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            color: AppColors.secColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchBar(farm));
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
