// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/Utils/confirmButton.dart';
import '../../../../Core/Utils/customTextField.dart';

class AddNewFarmInputs extends StatelessWidget {
  const AddNewFarmInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hint: "Add Farm ID",
          maxLength: 16,
          keyboardType: TextInputType.text,
          onChanged: (id) {},
          label: "Farm ID",
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hint: "Add Farm Owner",
          maxLength: 20,
          keyboardType: TextInputType.text,
          onChanged: (owner) {},
          label: "Farm Owner",
        ),
        const SizedBox(height: 20),
        CustomTextField(
          hint: "Add Farm Address",
          maxLength: 20,
          keyboardType: TextInputType.text,
          onChanged: (address) {},
          label: "Farm Address",
        ),
        const SizedBox(height: 40),
        ConfirmButton(onPressed: () {}),
      ],
    );
  }
}
