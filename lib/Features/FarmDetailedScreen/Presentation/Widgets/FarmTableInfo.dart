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
      required this.lastUpdate});

  final String farmID;
  final String farmOwner;
  final String farmAddress;
  final String lastUpdate;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        borderRadius: kBorderRadius,
        color: Colors.white,
      ),
      columnWidths: const {
        0: FlexColumnWidth(0.56),
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
        TableRow(
          children: [
            const RowTitle(
              title: "Last Update",
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
              ),
            ),
            RowContent(
              content: lastUpdate,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(15),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
