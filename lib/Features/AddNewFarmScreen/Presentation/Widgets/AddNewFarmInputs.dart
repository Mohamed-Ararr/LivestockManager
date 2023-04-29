// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Add%20Farm%20Cubit/cubit/add_farm_cubit.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart';

import '../../../../Core/Utils/confirmButton.dart';
import '../../../../Core/Utils/customTextField.dart';
import '../../../../Core/Utils/utils.dart';

class AddNewFarmInputs extends StatefulWidget {
  const AddNewFarmInputs({super.key});

  @override
  State<AddNewFarmInputs> createState() => _AddNewFarmInputsState();
}

class _AddNewFarmInputsState extends State<AddNewFarmInputs> {
  String? farmID;
  String? farmOwner;
  String? farmAddress;
  GlobalKey<FormState> key = GlobalKey();
  AutovalidateMode? validateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: validateMode,
      child: Column(
        children: [
          CustomTextField(
            hint: "Add Farm ID",
            maxLength: 16,
            keyboardType: TextInputType.text,
            onChanged: (id) => farmID = id,
            label: "Farm ID",
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hint: "Add Farm Owner",
            maxLength: 20,
            keyboardType: TextInputType.text,
            onChanged: (owner) => farmOwner = owner,
            label: "Farm Owner",
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hint: "Add Farm Address",
            maxLength: 20,
            keyboardType: TextInputType.text,
            onChanged: (address) => farmAddress = address,
            label: "Farm Address",
          ),
          const SizedBox(height: 40),
          ConfirmButton(onPressed: () {
            if (key.currentState!.validate()) {
              key.currentState!.save();
              FarmModel farm = FarmModel(
                farmID: farmID!,
                owner: farmOwner!,
                address: farmAddress!,
                lastUpdate:
                    "${DateTime.now().day} ${Utils.months[DateTime.now().month - 1]} ${DateTime.now().year} at ${DateTime.now().hour}:${DateTime.now().minute}",
              );

              BlocProvider.of<AddFarmCubit>(context).addNewFarm(farm);
              BlocProvider.of<FarmCubitCubit>(context).fetchAllFarms();
              GoRouter.of(context).pop();
            } else {
              validateMode = AutovalidateMode.always;
            }
          }),
        ],
      ),
    );
  }
}
