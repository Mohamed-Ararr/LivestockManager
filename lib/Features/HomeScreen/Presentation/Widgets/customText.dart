// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../constValues.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onTap: () => showSearch(context: context, delegate: SearchBar()),
      // keyboardType: TextInputType.none,
      decoration: InputDecoration(
        hintText: "Search. . .",
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
        ),
        prefixIconColor: Colors.grey,
        suffixIcon: IconButton(
          splashRadius: 10,
          onPressed: () => controller.text = "",
          icon: const Icon(
            FontAwesomeIcons.xmark,
          ),
        ),
        suffixIconColor: AppColors.mainColor,
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

class SearchBar extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query.isEmpty ? GoRouter.of(context).pop(context) : query = "";
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
    return Text("hello");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("hello world");
  }
}
