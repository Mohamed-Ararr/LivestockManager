// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:flutter_slidable/flutter_slidable.dart";
import "package:sheepmanager/Core/Utils/deleteOption.dart";
import "package:sheepmanager/Core/Utils/soldOption.dart";

import "SheepCard.dart";

class CardsListView extends StatelessWidget {
  const CardsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      itemBuilder: (context, index) {
        return Slidable(
          actionPane: const SlidableDrawerActionPane(),
          secondaryActions: const [
            DeleteOption(),
            SoldOption(),
          ],
          child: const SheepCard(),
        );
      },
    );
  }
}
