import 'package:flutter/material.dart';

import 'infoCard.dart';

class OverallDetailsGridView extends StatelessWidget {
  OverallDetailsGridView({super.key});

  final List<String> infos = [
    "ID",
    "State",
    "Sexe",
    "Weight",
    "Age",
    "Last Birth",
    "Children",
  ];

  final List infosContent = [
    "1001",
    "Available",
    "Male",
    "75 Kg",
    "14 Months",
    "22 January 2022",
    "4",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: infos.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return InfoCard(
          infoTitle: infos[index],
          infoContent: infosContent[index],
        );
      },
    );
  }
}
