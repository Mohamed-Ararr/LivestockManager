// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Features/AddNewSheepView/Presentation/Widgets/newSheepInputs.dart';
import 'package:sheepmanager/constValues.dart';

class AddNewSheepViewBody extends StatelessWidget {
  const AddNewSheepViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingRightLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => GoRouter.of(context).pop(),
                  icon: const Icon(FontAwesomeIcons.xmark),
                ),
                const Center(
                  child: Text(
                    "Add New Sheep Forum",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                const SizedBox(height: 25),
                const NewSheepInputs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
