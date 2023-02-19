// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Core/Utils/searchButton.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../constValues.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
  });

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
              children: const [
                Text(
                  "Welcome, Nassim!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Find What you are looking for!",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SearchButton(),
          ],
        ),
      ),
    );
  }
}
