// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'colors.dart';

class SearchBar extends SearchDelegate {
  @override
  TextStyle? get searchFieldStyle {
    return const TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.mainColor,
        elevation: 0,
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query.isEmpty
              ? GoRouter.of(context).pop([context, query])
              : query = "";
        },
        icon: const Icon(FontAwesomeIcons.xmark),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => GoRouter.of(context).pop(),
      icon: const Icon(FontAwesomeIcons.arrowLeft),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Center(child: Text("Results"));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(child: Text("Suggestions"));
  }
}
