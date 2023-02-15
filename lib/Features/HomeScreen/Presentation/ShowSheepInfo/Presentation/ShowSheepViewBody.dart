// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/ShowSheepInfo/Presentation/Widgets/customAppBarInfo.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/ShowSheepInfo/Presentation/Widgets/infoCard.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../../../Core/Utils/colors.dart';

class ShowSheepInfoViewBody extends StatelessWidget {
  ShowSheepInfoViewBody({super.key});

  final List infos = [
    "ID",
    "State",
    "Sexe",
    "Weight",
    "Age",
    "Last Birth",
    "Children",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: kPaddingRightLeft,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBarInfo(),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  "Sheep Infomation",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Overall Details",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              GridView.builder(
                itemCount: infos.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return InfoCard(
                    infoTitle: infos[index],
                    infoContent: "hello",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
