// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../Core/Utils/searchDele.dart';
import '../../../../constValues.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () => showSearch(context: context, delegate: SearchBar()),
      keyboardType: TextInputType.none,
      decoration: InputDecoration(
        hintText: "Search. . .",
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
        ),
        prefixIconColor: Colors.grey,
        enabledBorder: OutlineInputBorder(
          borderRadius: kBorderRadius,
          borderSide: BorderSide(
            width: 1.5,
            color: Colors.black.withAlpha(150),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: kBorderRadius,
          borderSide: BorderSide(
            width: 1.7,
            color: AppColors.mainColor,
          ),
        ),
      ),
    );
  }
}
