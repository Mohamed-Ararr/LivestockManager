// ignore_for_file: file_names

import "package:dropdown_search/dropdown_search.dart";
import "package:flutter/material.dart";

import "../../constValues.dart";
import "colors.dart";

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
    required this.items,
    required this.title,
    // required this.height,
    required this.onChanged,
    this.selectedItem,
    this.enabled = true,
  });

  final List<String> items;
  final String title;
  // final double height;
  final Function(String?)? onChanged;
  final String? selectedItem;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      enabled: enabled,
      onChanged: onChanged,
      popupProps: PopupProps.menu(
        menuProps: MenuProps(
          borderRadius: kBorderRadius,
        ),
        // constraints: BoxConstraints(maxHeight: height),
        fit: FlexFit.loose,
      ),
      items: items,
      selectedItem: selectedItem,
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: kBorderRadius,
            borderSide: BorderSide(
              color: AppColors.mainColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: kBorderRadius,
          ),
          label: Text(title),
          labelStyle: const TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
