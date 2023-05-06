// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:go_router/go_router.dart";
import "package:sheepmanager/Core/Utils/colors.dart";
import "package:sheepmanager/Core/Utils/customDropdown.dart";
import "package:sheepmanager/Core/Utils/customTextField.dart";
import "package:sheepmanager/Features/ExploreLivestockScreen/Presentation/Bloc%20Manager/LivestockCubit/Livestock_cubit.dart";
import "package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart";
import "package:sheepmanager/constValues.dart";

import '../../../../Core/Utils/confirmButton.dart';
import "../../../../Core/Utils/utils.dart";
import '../../../ExploreLivestockScreen/Data/Model/livestock_model.dart';
import "../../../ExploreLivestockScreen/Presentation/Bloc Manager/AddLivestockCubit/add_livestock_cubit.dart";

class NewLivestockInputs extends StatefulWidget {
  const NewLivestockInputs({super.key, required this.farm});

  final FarmModel farm;

  @override
  State<NewLivestockInputs> createState() => _NewLivestockInputsState();
}

class _NewLivestockInputsState extends State<NewLivestockInputs> {
  String? id;
  String? selectedType;
  String? selectedSexe;
  String? selectedGestation;
  String? pregnancyProgress;
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
            items: const ["Sheep", "Cow"],
            title: "Livestock Type",
            // height: 120,
            onChanged: (value) {
              selectedType = value;
            },
          ),
          const SizedBox(height: 20),
          CustomDropDown(
            items: const ["Male", "Female"],
            title: "Sexe",
            // height: 120,
            onChanged: (value) {
              setState(() {
                selectedSexe = value;
              });
            },
          ),
          const SizedBox(height: 20),
          CustomDropDown(
            enabled: selectedSexe == "Male" ? false : true,
            items: const ["Yes", "No"],
            title: "Gestation",
            // height: 100,
            onChanged: (gestation) {
              setState(() {
                selectedGestation = gestation;
              });
            },
          ),
          const SizedBox(height: 20),
          if (selectedGestation == "Yes")
            CustomTextField(
              label: "Pregnancy Progress (Months)",
              hint: "Add Pregnancy Progress",
              keyboardType: TextInputType.number,
              maxLength: 1,
              onChanged: (pregnancy) {
                pregnancyProgress = pregnancy;
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
                    "${lastBirthDate.day} ${Utils.months[lastBirthDate.month - 1]} ${lastBirthDate.year}",
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
            title: "Number of Children",
            // height: 200,
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
                    "${lastVisitDate.day} ${Utils.months[lastVisitDate.month - 1]} ${lastVisitDate.year}",
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
            onPressed: () async {
              if (formKey.currentState!.validate() &&
                  selectedType != null &&
                  selectedSexe != null &&
                  selectedNumb != null) {
                formKey.currentState!.save();
                String lastBirth =
                    "${lastBirthDate.day} ${Utils.months[lastBirthDate.month - 1]} ${lastBirthDate.year}";
                String lastVisit =
                    "${lastVisitDate.day} ${Utils.months[lastVisitDate.month - 1]} ${lastVisitDate.year}";
                var livestockModel = LivestockModel(
                  id: id!,
                  type: selectedType!,
                  sexe: selectedSexe!,
                  weight: int.parse(weight!),
                  age: int.parse(age!),
                  lastBirth: lastBirth,
                  children: int.parse(selectedNumb!),
                  lastVisit: lastVisit,
                  gestation: selectedGestation ?? "No",
                  pregenancyProgress: pregnancyProgress == null
                      ? "Not Pregnant"
                      : "$pregnancyProgress",
                );
                widget.farm.lastUpdate =
                    "${DateTime.now().day} ${Utils.months[DateTime.now().month - 1]} ${DateTime.now().year} at ${DateTime.now().hour}:${DateTime.now().minute}";
                BlocProvider.of<AddLivestockCubit>(context)
                    .addNewLivestock(livestockModel);

                BlocProvider.of<LivestockCubit>(context).fetchAllSheep();
                widget.farm.livestock = livestockModel;
                if (widget.farm.livestockList?.length == null) {
                  widget.farm.livestockList = [livestockModel];
                } else {
                  widget.farm.livestockList?.add(livestockModel);
                }
                widget.farm.save();
                GoRouter.of(context).pop();
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
