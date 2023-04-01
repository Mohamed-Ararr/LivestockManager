// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/Widgets/customFarmDetailedAppBar.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../../Core/Utils/backButton.dart';
import '../../../../Core/Utils/colors.dart';
import 'RowContent.dart';
import 'RowTitle.dart';

class FarmDetailedViewBody extends StatelessWidget {
  const FarmDetailedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    const pad = 20.0;
    const pad2 = 20.0;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomFarmDetailedAppBar(),
                const SizedBox(height: 20),
                const Text("Farm Information"),
                const SizedBox(height: 10),
                Table(
                  border: TableBorder.all(
                    borderRadius: kBorderRadius,
                    color: Colors.white,
                  ),
                  columnWidths: const {
                    0: FlexColumnWidth(0.57),
                  },
                  children: const [
                    TableRow(
                      children: [
                        RowTitle(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                          ),
                        ),
                        RowContent(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        RowTitle(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                          ),
                        ),
                        RowContent(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
