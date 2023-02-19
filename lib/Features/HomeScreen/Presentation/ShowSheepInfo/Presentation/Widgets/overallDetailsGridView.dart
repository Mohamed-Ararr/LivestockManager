import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Model/sheep_model.dart';

import 'infoCard.dart';

class OverallDetailsGridView extends StatelessWidget {
  OverallDetailsGridView({super.key, required this.sheep});

  final SheepModel sheep;

  final List<String> infos = [
    "ID",
    "State",
    "Sexe",
    "Weight",
    "Age",
    "Last Birth",
    "Children",
  ];

  @override
  Widget build(BuildContext context) {
    final List infosContent = [
      sheep.id,
      sheep.state,
      sheep.sexe,
      sheep.weight.toString(),
      sheep.age.toString(),
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
