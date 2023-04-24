// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart';
import 'package:sheepmanager/constValues.dart';

import '../../Features/ExploreLivestockScreen/Data/Model/livestock_model.dart';
import '../../Features/ExploreLivestockScreen/Presentation/Bloc Manager/LivestockCubit/Livestock_cubit.dart';

class DeleteOption extends StatelessWidget {
  const DeleteOption(
      {super.key,
      this.livestock,
      this.farm,
      required this.isFarm,
      required this.index});

  final LivestockModel? livestock;
  final FarmModel? farm;
  final bool isFarm;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8, right: 15),
      child: ClipRRect(
        borderRadius: kBorderRadius,
        child: IconSlideAction(
          onTap: () async {
            try {
              if (isFarm) {
                farm?.delete();
                BlocProvider.of<FarmCubitCubit>(context).fetchAllFarms();
              } else {
                int ind = index;
                for (int i = 0; i < farm!.livestockList!.length; i++) {
                  if (ind == i) {
                    farm!.livestockList!.removeAt(i);
                  }
                }
                farm!.save();
                BlocProvider.of<LivestockCubit>(context).fetchAllSheep();
                BlocProvider.of<FarmCubitCubit>(context).fetchAllFarms();
              }
            } catch (e) {
              debugPrint(e.toString());
            }
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
