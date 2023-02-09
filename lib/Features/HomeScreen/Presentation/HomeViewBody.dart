// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Core/Utils/colors.dart';
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
              children: [
                const CustomAppBar(),
                const SizedBox(height: 15),
                const SearchCard(),
                const SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 1.5,
                  color: AppColors.secColor,
                ),
                const SizedBox(height: 15),
                const Text("Livestock List"),
                const SizedBox(height: 10),
                const CardsListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
