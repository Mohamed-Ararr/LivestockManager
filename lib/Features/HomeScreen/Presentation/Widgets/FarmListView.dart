// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart';

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
            padding: kPaddingRightLeft,
            itemCount: state.farmList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return FarmShortBox(
                farmID: state.farmList[index].farmID!,
                farmOwner: state.farmList[index].owner!,
                farmAddress: state.farmList[index].address!,
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
