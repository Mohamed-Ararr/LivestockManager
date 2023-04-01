// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Data/Model/livestock_model.dart';
import '../Bloc Manager/SheepsCubit/sheeps_cubit.dart';

class SheepCardInfo extends StatelessWidget {
  const SheepCardInfo({super.key, required this.sheep});

  final LivestockModel sheep;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LivestockCubit, LivestockState>(
      builder: (context, state) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ID: ${sheep.id}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  "Type: ${sheep.type}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Tap For More Information",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      FontAwesomeIcons.anglesRight,
                      size: 18,
                      // color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
