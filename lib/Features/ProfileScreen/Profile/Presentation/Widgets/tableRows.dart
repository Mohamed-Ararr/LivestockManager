// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../Core/Utils/colors.dart';
import '../../../../../constValues.dart';

class TableRows extends StatelessWidget {
  const TableRows({super.key, required this.firstName, required this.lastName});

  final String firstName;
  final String lastName;

  @override
  Widget build(BuildContext context) {
    const pad = 20.0;
    const pad2 = 30.0;
    return Table(
      border: TableBorder.all(
        borderRadius: kBorderRadius,
        color: Colors.white,
      ),
      columnWidths: const {
        0: FlexColumnWidth(0.57),
      },
      children: [
        TableRow(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                ),
                color: AppColors.mainColor.withAlpha(200),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: pad2, horizontal: pad),
              child: const Text("First Name"),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 212, 212, 212),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                ),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: pad2, horizontal: pad),
              child: Text(
                firstName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.mainColor.withAlpha(200),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                ),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: pad2, horizontal: pad),
              child: const Text("Last Name"),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                ),
                color: Color.fromARGB(255, 212, 212, 212),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: pad2, horizontal: pad),
              child: Text(
                lastName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
