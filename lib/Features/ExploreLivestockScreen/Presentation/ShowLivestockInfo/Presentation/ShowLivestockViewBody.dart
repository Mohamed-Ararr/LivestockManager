// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Core/Utils/fonts.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../Data/Model/livestock_model.dart';
import 'Widgets/customAppBarInfo.dart';
import 'Widgets/doctorAppoinCard.dart';
import 'Widgets/overallDetailsGridView.dart';

class ShowLivestockInfoViewBody extends StatelessWidget {
  const ShowLivestockInfoViewBody({super.key, required this.sheep});

  final LivestockModel sheep;

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
              Center(
                child: Text(
                  "${sheep.type} Infomation",
                  style: AppFonts.regularBlackTitle,
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
