// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Model/sheep_model.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/ShowSheepInfo/Presentation/Widgets/customAppBarInfo.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/ShowSheepInfo/Presentation/Widgets/overallDetailsGridView.dart';
import 'package:sheepmanager/constValues.dart';

import 'Widgets/doctorAppoinCard.dart';

class ShowSheepInfoViewBody extends StatelessWidget {
  const ShowSheepInfoViewBody({super.key, required this.sheep});

  final SheepModel sheep;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: kPaddingRightLeft,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBarInfo(sheep: sheep),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  "Sheep Infomation",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Overall Details",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              OverallDetailsGridView(sheep: sheep),
              const SizedBox(height: 30),
              const Text(
                "Doctor Appointment",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              DoctorVisitsCard(sheep: sheep),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    ));
  }
}
