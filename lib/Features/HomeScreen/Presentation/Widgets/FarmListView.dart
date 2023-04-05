// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart';

import '../../../../Core/Utils/deleteOption.dart';
import '../../../../constValues.dart';
import 'FarmShortBox.dart';

class FarmListView extends StatelessWidget {
  const FarmListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FarmCubitCubit, FarmCubitState>(
      builder: (context, state) {
        if (state is FarmCubitSuccess) {
          return ListView.builder(
            itemCount: state.farmList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 1500),
                position: index,
                child: SlideAnimation(
                  horizontalOffset: 300,
                  child: FadeInAnimation(
                    child: Slidable(
                      actionPane: const SlidableDrawerActionPane(),
                      secondaryActions: [
                        DeleteOption(farm: state.farmList[index], isFarm: true),
                      ],
                      child: Padding(
                        padding: kPaddingRightLeft,
                        child: FarmShortBox(
                          farm: state.farmList[index],
                          farmID: state.farmList[index].farmID!,
                          farmOwner: state.farmList[index].owner!,
                          farmAddress: state.farmList[index].address!,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
