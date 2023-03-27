// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/colors.dart';
import 'package:sheepmanager/Core/Utils/fonts.dart';
import 'package:sheepmanager/Core/Utils/router.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Widgets/FarmBoxAttribute.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Widgets/FarmShortInfo.dart';

import '../../../../constValues.dart';
import 'CustomAppBar.dart';
import 'SearchCard.dart';
import 'TapMoreButton.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(height: 25),
              const SearchCard(),
              const SizedBox(height: 25),
              Padding(
                padding: kPaddingRightLeft,
                child:
                    Text("Registered Farms", style: AppFonts.regularBlackTitle),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                padding: kPaddingRightLeft,
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: const [
                        FarmShortInfo(),
                        TapMoreButton(),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
