// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sheepmanager/Core/Utils/searchDele.dart';

import 'colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showSearch(context: context, delegate: SearchBar()),
      style: IconButton.styleFrom(
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: Colors.white,
      ),
      child: Icon(
        FontAwesomeIcons.magnifyingGlass,
        color: AppColors.secColor,
      ),
    );
  }
}
