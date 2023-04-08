// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sheepmanager/Core/Utils/EmptyList.dart';
import 'package:sheepmanager/Core/Utils/LoadingWidget.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Widgets/FarmFullBox.dart';

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
          if (state.farmList.isNotEmpty) {
            return ListView.builder(
              itemCount: state.farmList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return FarmFullBox(
                  index: index,
                  farm: state.farmList[index],
                );
              },
            );
          } else {
            return const EmptyListWidget();
          }
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
