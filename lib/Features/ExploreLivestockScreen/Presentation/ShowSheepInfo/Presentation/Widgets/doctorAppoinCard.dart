// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../../Core/Utils/colors.dart';
import '../../../../Data/Model/sheep_model.dart';

class DoctorVisitsCard extends StatelessWidget {
  const DoctorVisitsCard({super.key, required this.sheep});

  final SheepModel sheep;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: AppColors.mainColor,
          ),
          alignment: Alignment.center,
          child: const Text(
            "Last Doctor Visit",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          alignment: Alignment.center,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 212, 212, 212),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Text(sheep.lastVisit),
        ),
      ],
    );
  }
}
