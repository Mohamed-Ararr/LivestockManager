// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: AppColors.secColor,
    ));
  }
}
