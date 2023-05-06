import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../Core/Utils/searchButton.dart';
import '../../../../Core/Utils/searchDele.dart';
import '../../../../constValues.dart';

class SearchCardLivestock extends StatelessWidget {
  const SearchCardLivestock({super.key, required this.farm});

  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingRightLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        decoration: BoxDecoration(
          color: AppColors.secColor,
          borderRadius: kBorderRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Farm: ${farm.owner}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Search for livestock!",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SearchButton(
                onTap: () =>
                    showSearch(context: context, delegate: SearchBar(farm))),
          ],
        ),
      ),
    );
  }
}
