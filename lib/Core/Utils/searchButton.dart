// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheepmanager/Core/Utils/searchDele.dart';

import '../../constValues.dart';
import 'colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showSearch(context: context, delegate: SearchBar()),
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: kBorderRadius,
        ),
        backgroundColor: Colors.white,
        fixedSize: const Size(50, 50),
      ),
      child: Icon(
        FontAwesomeIcons.magnifyingGlass,
        color: AppColors.secColor,
      ),
    );
  }
}
