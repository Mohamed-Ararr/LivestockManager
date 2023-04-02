// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../constValues.dart';
import 'RowContent.dart';
import 'RowTitle.dart';

class FarmTableInfo extends StatelessWidget {
  const FarmTableInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
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
              title: "Farm ID",
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
            RowTitle(title: "Farm Owner"),
            RowContent(),
          ],
        ),
        TableRow(
          children: [
            RowTitle(title: "Farm Address"),
            RowContent(),
          ],
        ),
        TableRow(
          children: [
            RowTitle(
              title: "Last Visit",
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
    );
  }
}
