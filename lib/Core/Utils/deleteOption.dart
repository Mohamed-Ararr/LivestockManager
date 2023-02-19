// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DeleteOption extends StatelessWidget {
  const DeleteOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        child: IconSlideAction(
          onTap: () {},
          color: Colors.red,
          caption: "Delete",
          iconWidget: const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Icon(
              FontAwesomeIcons.trash,
              size: 25,
            ),
          ),
        ),
      ),
    );
  }
}
