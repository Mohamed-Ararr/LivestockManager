// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:sheepmanager/Features/ExploreLivestockScreen/Presentation/Widgets/ExploreStockAppBar.dart";
import "package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart";
import "package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart";

import "../../../../Core/Utils/fonts.dart";
import "../../../../Core/Utils/router.dart";
import '../../../../constValues.dart';
import '../Bloc Manager/LivestockCubit/Livestock_cubit.dart';
import "CardsListView.dart";
import 'addNewLivestockButton.dart';

class ExploreLivestockViewBody extends StatefulWidget {
  const ExploreLivestockViewBody({super.key, required this.farm});

  final FarmModel farm;

  @override
  State<ExploreLivestockViewBody> createState() =>
      _ExploreLivestockViewBodyState();
}

class _ExploreLivestockViewBodyState extends State<ExploreLivestockViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddNewSheepButton(
        onTap: () => GoRouter.of(context)
            .push(AppRouter.addNewSheepView, extra: widget.farm),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExploreStockAppBar(farm: widget.farm),
              const SizedBox(height: 25),
              Padding(
                padding: kPaddingRightLeft,
                child: Text("Farm: ${widget.farm.farmID}",
                    style: AppFonts.regularBlackTitle),
              ),
              const SizedBox(height: 10),
              BlocProvider(
                create: (context) => FarmCubitCubit()..fetchAllFarms(),
                child: CardsListView(farm: widget.farm),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
