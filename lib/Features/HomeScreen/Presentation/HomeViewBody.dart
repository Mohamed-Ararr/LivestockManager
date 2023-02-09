// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Core/Utils/colors.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Widgets/CardsListView.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Widgets/CustomAppBar.dart';
import 'package:sheepmanager/constValues.dart';

import 'Widgets/customText.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.secColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: kBorderRadius,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
        child: const Text("Add New Sheep"),
      ),
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAppBar(),
                SizedBox(height: 15),
                CustomTextField(),
                SizedBox(height: 15),
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
