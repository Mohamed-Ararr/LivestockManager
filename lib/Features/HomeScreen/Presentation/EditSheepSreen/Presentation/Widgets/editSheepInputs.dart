// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../Core/Utils/colors.dart';
import '../../../../../../Core/Utils/confirmButton.dart';
import '../../../../../../Core/Utils/customDropdown.dart';
import '../../../../../../Core/Utils/customTextField.dart';
import '../../../../../../constValues.dart';
import '../../../../Data/Model/sheep_model.dart';

class EditSheepInputs extends StatefulWidget {
  const EditSheepInputs({super.key, required this.sheep});

  final SheepModel sheep;

  @override
  State<EditSheepInputs> createState() => _EditSheepInputsState();
}

class _EditSheepInputsState extends State<EditSheepInputs> {
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  String? id;
  String? selectedState;
  String? selectedSexe;
  String? weight;
  String? age;
  String? selectedNumb;
  String? lastVisitDate;
  DateTime? lastBirthDate = DateTime.now();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            keyboardType: TextInputType.text,
            label: "ID",
            hint: widget.sheep.id,
            onChanged: (value) {
              id = value;
            },
          ),
          const SizedBox(height: 20),
          CustomDropDown(
            items: const ["Available", "Sold"],
            title: "State",
            height: 120,
            selectedItem: widget.sheep.state,
            onChanged: (val) {
              selectedState = val;
            },
          ),
          const SizedBox(height: 20),
          CustomDropDown(
            items: const ["Male", "Female"],
            title: "Sexe",
            height: 120,
            selectedItem: widget.sheep.sexe,
            onChanged: (value) {
              selectedSexe = value;
            },
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  keyboardType: TextInputType.number,
                  label: "Weight",
                  hint: "${widget.sheep.weight}",
                  onChanged: (value) {
                    weight = value;
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomTextField(
                  keyboardType: TextInputType.number,
                  label: "Age(Months)",
                  hint: "${widget.sheep.age}",
                  onChanged: (value) {
                    age = value;
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Last Birth Date",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 5),
          InkWell(
            onTap: () async {
              var selected = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2100),
              );

              if (selected != null) {
                setState(() {
                  widget.sheep.lastBirth =
                      "${selected.day} ${months[selected.month - 1]} ${selected.year}";
                });
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: kBorderRadius,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.sheep.lastBirth,
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.secColor,
                    ),
                  ),
                  const Icon(
                    FontAwesomeIcons.calendar,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          CustomDropDown(
            items: const ["0", "1", "2", "3", "4", "5", "6"],
            title: "Number of Lambs",
            height: 200,
            selectedItem: "${widget.sheep.children}",
            onChanged: (value) {
              selectedNumb = value;
            },
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              "Additional Information",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Last Doctor Visit",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 5),
          InkWell(
            onTap: () async {
              var selected = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2100),
              );

              if (selected != null) {
                setState(() {
                  widget.sheep.lastVisit =
                      "${selected.day} ${months[selected.month - 1]} ${selected.year}";
                });
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: kBorderRadius,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.sheep.lastVisit,
                    style: TextStyle(
                      fontSize: 17,
                      color: AppColors.secColor,
                    ),
                  ),
                  const Icon(
                    FontAwesomeIcons.calendar,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          ConfirmButton(
            onPressed: () {
              widget.sheep.id = id ?? widget.sheep.id;
              widget.sheep.state = selectedState ?? widget.sheep.state;
              widget.sheep.sexe = selectedSexe ?? widget.sheep.sexe;
              widget.sheep.weight =
                  int.parse(weight ?? "${widget.sheep.weight}");
              widget.sheep.age = int.parse(age ?? "${widget.sheep.age}");
              widget.sheep.children =
                  int.parse(selectedNumb ?? "${widget.sheep.children}");

              widget.sheep.save();
              GoRouter.of(context).pop();
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
