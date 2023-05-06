// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../../Core/Utils/colors.dart';
import '../../../../../constValues.dart';
import '../../../../FarmDetailedScreen/Presentation/Widgets/RowContent.dart';
import '../../../../FarmDetailedScreen/Presentation/Widgets/RowTitle.dart';

class TableRows extends StatelessWidget {
  const TableRows({super.key, required this.firstName, required this.lastName});

  final String firstName;
  final String lastName;

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
              title: "First Name",
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
              ),
            ),
            RowContent(
              content: firstName,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            const RowTitle(
              title: "Last Name",
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
              ),
            ),
            RowContent(
              content: lastName,
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
