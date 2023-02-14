import 'package:flutter/material.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../constValues.dart';

class InformationTable extends StatelessWidget {
  const InformationTable({super.key});

  @override
  Widget build(BuildContext context) {
    const pad = 20.0;
    return Table(
      border: TableBorder.all(
        borderRadius: kBorderRadius,
        color: Colors.white,
      ),
      columnWidths: const {
        0: FlexColumnWidth(0.55),
      },
      children: [
        TableRow(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                ),
                color: AppColors.mainColor.withAlpha(200),
              ),
              padding: const EdgeInsets.all(pad),
              child: const Text("First Name"),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 212, 212, 212),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                ),
              ),
              padding: const EdgeInsets.all(pad),
              child: const Text("Nassim"),
            ),
          ],
        ),
        TableRow(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.mainColor.withAlpha(200),
              ),
              padding: const EdgeInsets.all(pad),
              child: const Text("Last Name"),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 212, 212, 212),
              ),
              padding: const EdgeInsets.all(pad),
              child: const Text("Boussaha"),
            ),
          ],
        ),
        TableRow(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.mainColor.withAlpha(200),
              ),
              padding: const EdgeInsets.all(pad),
              child: const Text("Position"),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 212, 212, 212),
              ),
              padding: const EdgeInsets.all(pad),
              child: const Text("Wood Carpenter"),
            ),
          ],
        ),
        TableRow(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                ),
                color: AppColors.mainColor.withAlpha(200),
              ),
              padding: const EdgeInsets.all(pad),
              child: const Text("Certificate"),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 212, 212, 212),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                ),
              ),
              padding: const EdgeInsets.all(pad),
              child: const Text("Farmer"),
            ),
          ],
        ),
      ],
    );
  }
}
