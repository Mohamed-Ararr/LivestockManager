// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/router.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart';
import 'package:sheepmanager/constValues.dart';

import 'FarmShortInfo.dart';
import 'TapMoreButton.dart';

class FarmShortBox extends StatelessWidget {
  const FarmShortBox({
    super.key,
    required this.farm,
  });
  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: kBorderRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 9,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: InkWell(
        onTap: () =>
            GoRouter.of(context).push(AppRouter.farmDetailedView, extra: farm),
        borderRadius: kBorderRadius,
        child: BlocConsumer<FarmCubitCubit, FarmCubitState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return Column(
              children: [
                FarmShortInfo(
                  farmID: farm.farmID!,
                  farmOwner: farm.owner!,
                  farmAddress: farm.address!,
                ),
                const TapMoreButton(),
              ],
            );
          },
        ),
      ),
    );
  }
}
