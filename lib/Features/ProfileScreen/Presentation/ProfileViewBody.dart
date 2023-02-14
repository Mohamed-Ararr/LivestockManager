// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sheepmanager/Features/ProfileScreen/Presentation/Widgets/informationTable.dart';
import 'package:sheepmanager/Features/ProfileScreen/Presentation/Widgets/profileAvatar.dart';
import 'package:sheepmanager/Features/ProfileScreen/Presentation/Widgets/profileCustomAppBar.dart';

import '../../../constValues.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: Column(
            children: const [
              ProfileAppBar(),
              Spacer(),
              ProfileAvatar(),
              Spacer(),
              InformationTable(),
              Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
