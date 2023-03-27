// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../../constValues.dart";
import "../Bloc Manager/SheepsCubit/sheeps_cubit.dart";
import "CardsListView.dart";
import "CustomAppBar.dart";
import "addNewSheepButton.dart";
import "searchCard.dart";

class ExploreLivestockViewBody extends StatefulWidget {
  const ExploreLivestockViewBody({super.key});

  @override
  State<ExploreLivestockViewBody> createState() =>
      _ExploreLivestockViewBodyState();
}

class _ExploreLivestockViewBodyState extends State<ExploreLivestockViewBody> {
  @override
  void initState() {
    BlocProvider.of<SheepsCubit>(context).fetchAllSheep();
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
            children: const [
              CustomAppBar(),
              SizedBox(height: 25),
              SearchCard(),
              SizedBox(height: 25),
              Padding(
                padding: kPaddingRightLeft,
                child: Text("Livestock List", style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 10),
              CardsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
