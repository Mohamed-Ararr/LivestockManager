import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

import '../../../../Core/Utils/deleteOption.dart';
import '../../../../constValues.dart';
import 'FarmShortBox.dart';

class FarmFullBox extends StatelessWidget {
  const FarmFullBox({super.key, required this.index, required this.farm});

  final int index;
  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      duration: const Duration(milliseconds: 1500),
      position: index,
      child: SlideAnimation(
        horizontalOffset: 300,
        child: FadeInAnimation(
          child: Slidable(
            actionPane: const SlidableDrawerActionPane(),
            secondaryActions: [
              DeleteOption(farm: farm, isFarm: true, index: index),
            ],
            child: Padding(
              padding: kPaddingRightLeft,
              child: FarmShortBox(
                farm: farm,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
