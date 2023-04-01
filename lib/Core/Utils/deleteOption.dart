// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheepmanager/constValues.dart';

import '../../Features/ExploreLivestockScreen/Data/Model/livestock_model.dart';
import '../../Features/ExploreLivestockScreen/Presentation/Bloc Manager/SheepsCubit/sheeps_cubit.dart';

class DeleteOption extends StatelessWidget {
  const DeleteOption({super.key, required this.sheep});

  final LivestockModel sheep;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8, right: 15),
      child: ClipRRect(
        borderRadius: kBorderRadius,
        child: IconSlideAction(
          onTap: () {
            sheep.delete();
            BlocProvider.of<LivestockCubit>(context).fetchAllSheep();
          },
          color: const Color.fromARGB(255, 230, 93, 84),
          caption: "Delete",
          iconWidget: const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Icon(
              FontAwesomeIcons.trash,
              size: 25,
            ),
          ),
        ),
      ),
    );
  }
}
