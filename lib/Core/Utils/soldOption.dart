// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Features/ExploreLivestockScreen/Data/Model/sheep_model.dart';

class SoldOption extends StatelessWidget {
  const SoldOption({super.key, required this.sheep});

  final SheepModel sheep;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        child: IconSlideAction(
          onTap: () {
            sheep.state == "Sold"
                ? sheep.state = "Available"
                : sheep.state = "Sold";
            sheep.save();
          },
          color: Colors.green,
          caption: sheep.state == "Sold" ? "Available" : "Sold",
          iconWidget: const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Icon(
              FontAwesomeIcons.check,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
      ),
    );
  }
}
