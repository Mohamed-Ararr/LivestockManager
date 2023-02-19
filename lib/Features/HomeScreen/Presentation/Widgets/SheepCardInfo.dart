// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Model/sheep_model.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/SheepsCubit/sheeps_cubit.dart';

class SheepCardInfo extends StatelessWidget {
  const SheepCardInfo({super.key, required this.sheep});

  final SheepModel sheep;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SheepsCubit, SheepsState>(
      builder: (context, state) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ID: ${sheep.id}"),
                const SizedBox(height: 5),
                Text("State: ${sheep.state}"),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Tap For More Information"),
                    Icon(
                      FontAwesomeIcons.anglesRight,
                      size: 18,
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
