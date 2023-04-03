// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Data/Model/livestock_model.dart';
import 'infoCard.dart';

class OverallDetailsGridView extends StatelessWidget {
  OverallDetailsGridView({super.key, required this.sheep});

  final LivestockModel sheep;

  final List<String> infos = [
    "ID",
    "Type",
    "Sexe",
    "Gestation",
    "Pregnancy Progress",
    "Weight",
    "Age",
    "Last Birth",
    "Children",
  ];

  @override
  Widget build(BuildContext context) {
    final List infosContent = [
      sheep.id,
      sheep.type,
      sheep.sexe,
      sheep.gestation,
      "${sheep.pregenancyProgress}",
      "${sheep.weight} KG",
      "${sheep.age} Months",
      sheep.lastBirth,
      sheep.children.toString(),
    ];
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
