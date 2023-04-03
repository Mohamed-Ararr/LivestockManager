// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:sheepmanager/Features/ExploreLivestockScreen/Presentation/Widgets/ExploreStockAppBar.dart";

import "../../../../Core/Utils/fonts.dart";
import '../../../../constValues.dart';
import "../Bloc Manager/LivestockCubit/Livestock_cubit.dart";
import "CardsListView.dart";
import 'addNewLivestockButton.dart';

class ExploreLivestockViewBody extends StatefulWidget {
  const ExploreLivestockViewBody({super.key});

  @override
  State<ExploreLivestockViewBody> createState() =>
      _ExploreLivestockViewBodyState();
}

class _ExploreLivestockViewBodyState extends State<ExploreLivestockViewBody> {
  @override
  void initState() {
    BlocProvider.of<LivestockCubit>(context).fetchAllSheep();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const AddNewSheepButton(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const ExploreStockAppBar(),
              const SizedBox(height: 25),
              Padding(
                padding: kPaddingRightLeft,
                child: Text("Explore Livestock",
                    style: AppFonts.regularBlackTitle),
              ),
              const SizedBox(height: 10),
              const CardsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
