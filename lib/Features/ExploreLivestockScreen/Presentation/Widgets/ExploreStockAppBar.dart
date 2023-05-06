// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:go_router/go_router.dart";
import "package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart";

import "../../../../Core/Utils/searchDele.dart";
import "../../../../constValues.dart";

class ExploreStockAppBar extends StatelessWidget {
  const ExploreStockAppBar({super.key, required this.farm});
  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingRightLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(FontAwesomeIcons.circleXmark),
          ),
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchBar(farm));
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.black,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
