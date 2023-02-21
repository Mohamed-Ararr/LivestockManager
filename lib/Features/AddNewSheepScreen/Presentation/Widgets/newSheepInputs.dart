// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:sheepmanager/Core/Utils/colors.dart";
import "package:sheepmanager/Core/Utils/customDropdown.dart";
import "package:sheepmanager/Core/Utils/customTextField.dart";
import "package:sheepmanager/Features/HomeScreen/Data/Model/sheep_model.dart";
import "package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/AddSheepCubit/add_sheep_cubit.dart";
import "package:sheepmanager/constValues.dart";

import "../../../../Core/Utils/confirmButton.dart";

class NewSheepInputs extends StatefulWidget {
  const NewSheepInputs({super.key});

  @override
  State<NewSheepInputs> createState() => _NewSheepInputsState();
}

class _NewSheepInputsState extends State<NewSheepInputs> {
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
  DateTime lastVisitDate = DateTime.now();
  DateTime lastBirthDate = DateTime.now();

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode validateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: validateMode,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            maxLength: 20,
            onChanged: (idVal) {
              id = idVal;
            },
            keyboardType: TextInputType.text,
            label: "ID",
            hint: "Enter unique ID",
          ),
          const SizedBox(height: 20),
          CustomDropDown(
            items: const ["Available", "Sold"],
            title: "State",
            height: 120,
            onChanged: (val) {
              selectedState = val;
            },
          ),
          const SizedBox(height: 20),
          CustomDropDown(
            items: const ["Male", "Female"],
            title: "Sexe",
            height: 120,
            onChanged: (value) {
              selectedSexe = value;
            },
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  maxLength: 3,
                  onChanged: (weightVal) {
                    // setState(() {
                    //   weight = weightVal;
                    // });
                    weight = weightVal;
                  },
                  keyboardType: TextInputType.number,
                  label: "Weight",
                  hint: "Enter Sheep Weight",
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomTextField(
                  maxLength: 3,
                  onChanged: (ageVal) {
                    // setState(() {
                    //   age = ageVal;
                    // });
                    age = ageVal;
                  },
                  keyboardType: TextInputType.number,
                  label: "Age(Months)",
                  hint: "Enter Sheep Age",
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
            onTap: () => showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime.now(),
            ).then((value) {
              setState(() {
                lastBirthDate = value ?? DateTime.now();
              });
            }),
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
                    "${lastBirthDate.day} ${months[lastBirthDate.month - 1]} ${lastBirthDate.year}",
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
            onChanged: (val) {
              selectedNumb = val;
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
            onTap: () => showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime.now(),
            ).then((value) {
              setState(() {
                lastVisitDate = value ?? DateTime.now();
              });
            }),
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
                    "${lastVisitDate.day} ${months[lastVisitDate.month - 1]} ${lastVisitDate.year}",
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
              if (formKey.currentState!.validate() &&
                  selectedState != null &&
                  selectedSexe != null &&
                  selectedNumb != null) {
                formKey.currentState!.save();
                String lastBirth =
                    "${lastBirthDate.day} ${months[lastBirthDate.month - 1]} ${lastBirthDate.year}";
                String lastVisit =
                    "${lastVisitDate.day} ${months[lastVisitDate.month - 1]} ${lastVisitDate.year}";
                var sheepModel = SheepModel(
                  id: id!,
                  state: selectedState!,
                  sexe: selectedSexe!,
                  weight: int.parse(weight!),
                  age: int.parse(age!),
                  lastBirth: lastBirth,
                  children: int.parse(selectedNumb!),
                  lastVisit: lastVisit,
                );

                BlocProvider.of<AddSheepCubit>(context).addNewSheep(sheepModel);
              } else {
                setState(() {
                  validateMode = AutovalidateMode.always;
                });
              }
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
