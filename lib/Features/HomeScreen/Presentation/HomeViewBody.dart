// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Widgets/CardsListView.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Widgets/CustomAppBar.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Widgets/addNewSheepButton.dart';
import 'package:sheepmanager/constValues.dart';

import 'Widgets/searchCard.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const AddNewSheepButton(),
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAppBar(),
                SizedBox(height: 25),
                SearchCard(),
                SizedBox(height: 15),
                SizedBox(height: 10),
                Text("Livestock List"),
                SizedBox(height: 10),
                CardsListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
