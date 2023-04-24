// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';

import '../../../../Core/Utils/confirmButton.dart';
import '../../../../Core/Utils/customTextField.dart';

class EditFarmInputs extends StatefulWidget {
  const EditFarmInputs({super.key, required this.farm});

  final FarmModel farm;

  @override
  State<EditFarmInputs> createState() => _EditFarmInputsState();
}

class _EditFarmInputsState extends State<EditFarmInputs> {
  String? farmID;
  String? farmOwner;
  String? farmAddress;
  GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        children: [
          CustomTextField(
            hint: widget.farm.farmID!,
            maxLength: 16,
            keyboardType: TextInputType.text,
            onChanged: (id) => farmID = id,
            label: "Farm ID",
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hint: widget.farm.owner!,
            maxLength: 20,
            keyboardType: TextInputType.text,
            onChanged: (owner) => farmOwner = owner,
            label: "Farm Owner",
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hint: widget.farm.address!,
            maxLength: 20,
            keyboardType: TextInputType.text,
            onChanged: (address) => farmAddress = address,
            label: "Farm Address",
          ),
          const SizedBox(height: 40),
          ConfirmButton(onPressed: () {
            widget.farm.farmID = farmID ?? widget.farm.farmID;
            widget.farm.owner = farmOwner ?? widget.farm.owner;
            widget.farm.address = farmAddress ?? widget.farm.address;

            widget.farm.save();
            GoRouter.of(context).pop();
          }),
        ],
      ),
    );
  }
}
