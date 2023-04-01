// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../../Core/Utils/backButton.dart';

class FarmDetailedViewBody extends StatelessWidget {
  const FarmDetailedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomBackButton(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.penToSquare),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
