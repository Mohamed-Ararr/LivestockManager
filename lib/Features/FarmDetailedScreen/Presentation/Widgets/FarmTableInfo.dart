// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../constValues.dart';
import 'RowContent.dart';
import 'RowTitle.dart';

class FarmTableInfo extends StatelessWidget {
  const FarmTableInfo(
      {super.key,
      required this.farmID,
      required this.farmOwner,
      required this.farmAddress,
      required this.x});

  final String farmID;
  final String farmOwner;
  final String farmAddress;
  final String x;

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
      children: [
        TableRow(
          children: [
            const RowTitle(
              title: "Farm ID",
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
              ),
            ),
            RowContent(
              content: farmID,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            const RowTitle(title: "Farm Owner"),
            RowContent(content: farmOwner),
          ],
        ),
        TableRow(
          children: [
            const RowTitle(title: "Farm Address"),
            RowContent(content: farmAddress),
          ],
        ),
        const TableRow(
          children: [
            RowTitle(
              title: "Last Visit",
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
              ),
            ),
            RowContent(
              content: "xxxx",
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
