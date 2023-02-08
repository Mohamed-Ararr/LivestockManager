import "package:flutter/material.dart";

import "SheepCard.dart";

class CardsListView extends StatelessWidget {
  const CardsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (context, index) => const SheepCard(),
    );
  }
}
