// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:sheepmanager/Core/Utils/colors.dart";
import "package:sheepmanager/Core/Utils/confirmButton.dart";
import "package:sheepmanager/Core/Utils/customDropdown.dart";
import "package:sheepmanager/Core/Utils/customTextField.dart";
import "package:sheepmanager/constValues.dart";

class NewSheepInputs extends StatefulWidget {
  const NewSheepInputs({super.key});

  @override
  State<NewSheepInputs> createState() => _NewSheepInputsState();
}

class _NewSheepInputsState extends State<NewSheepInputs> {
  final TextEditingController idContr = TextEditingController();

  final TextEditingController weightContr = TextEditingController();

  final TextEditingController ageContr = TextEditingController();

  final TextEditingController issuesContr = TextEditingController();

  final TextEditingController medsContr = TextEditingController();

  DateTime lastVisitDate = DateTime.now();
  DateTime lastBirthDate = DateTime.now();

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

  String? selectedState;
  String? selectedSexe;
  String? selectedNumb;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextField(
          controller: idContr,
          label: "ID",
          hint: "Enter unique ID",
          widg: IconButton(
            onPressed: () => idContr.text = "",
            icon: const Icon(
              FontAwesomeIcons.xmark,
            ),
          ),
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
                controller: weightContr,
                label: "Weight",
                hint: "Enter Sheep Weight",
                widg: IconButton(
                  onPressed: () => weightContr.text = "",
                  icon: const Icon(
                    FontAwesomeIcons.xmark,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: CustomTextField(
                controller: ageContr,
                label: "Age(Months)",
                hint: "Enter Sheep Age",
                widg: IconButton(
                  onPressed: () => ageContr.text = "",
                  icon: const Icon(
                    FontAwesomeIcons.xmark,
                  ),
                ),
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
            lastDate: DateTime(2100),
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
          items: const ["1", "2", "3", "4", "5", "6"],
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
            lastDate: DateTime(2100),
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
        const ConfirmButton(),
        const SizedBox(height: 20),
      ],
    );
  }
}