// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/colors.dart';
import 'package:sheepmanager/constValues.dart';

class ProfileForumViewBody extends StatefulWidget {
  const ProfileForumViewBody({super.key});

  @override
  State<ProfileForumViewBody> createState() => _ProfileForumViewBodyState();
}

class _ProfileForumViewBodyState extends State<ProfileForumViewBody> {
  final TextEditingController c1 = TextEditingController();
  final TextEditingController c2 = TextEditingController();

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
                IconButton(
                  onPressed: () => GoRouter.of(context).pop(),
                  icon: const Icon(FontAwesomeIcons.xmark),
                ),
                const SizedBox(height: 25),
                const Center(
                    child: Text(
                  "Edit Owner Forum",
                  style: TextStyle(fontSize: 22),
                )),
                const SizedBox(height: 35),
                customTextField("First Name", "Enter your name", c1),
                const SizedBox(height: 15),
                customTextField("Last Name", "Enter your last name", c2),
                const SizedBox(height: 35),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                    elevation: 0,
                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: kBorderRadius,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Confirm",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField customTextField(
      String label, String hint, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () => controller.text = "",
          icon: const Icon(
            FontAwesomeIcons.xmark,
          ),
        ),
        labelStyle: TextStyle(
          color: AppColors.secColor,
        ),
        labelText: label,
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderRadius: kBorderRadius,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: kBorderRadius,
          borderSide: BorderSide(
            color: AppColors.mainColor,
          ),
        ),
      ),
    );
  }
}
