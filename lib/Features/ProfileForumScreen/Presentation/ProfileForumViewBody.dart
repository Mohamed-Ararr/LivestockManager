// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/confirmButton.dart';
import 'package:sheepmanager/Core/Utils/customTextField.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../Core/Utils/backButton.dart';

class ProfileForumViewBody extends StatefulWidget {
  const ProfileForumViewBody({super.key});

  @override
  State<ProfileForumViewBody> createState() => _ProfileForumViewBodyState();
}

class _ProfileForumViewBodyState extends State<ProfileForumViewBody> {
  final TextEditingController c1 = TextEditingController();
  final TextEditingController c2 = TextEditingController();

  deleteInput(TextEditingController controller) {
    controller.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBackButton(),
                const SizedBox(height: 25),
                const Center(
                    child: Text(
                  "Edit Owner Forum",
                  style: TextStyle(fontSize: 22),
                )),
                const SizedBox(height: 35),
                CustomTextField(
                  keyboardType: TextInputType.text,
                  controller: c1,
                  label: "First Name",
                  hint: "Enter Your Name",
                  widg: IconButton(
                    onPressed: () => c1.text = "",
                    icon: const Icon(
                      FontAwesomeIcons.xmark,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  keyboardType: TextInputType.text,
                  controller: c2,
                  label: "Last Name",
                  hint: "Enter Your Last Name",
                  widg: IconButton(
                    onPressed: () => c2.text = "",
                    icon: const Icon(
                      FontAwesomeIcons.xmark,
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                const ConfirmButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
