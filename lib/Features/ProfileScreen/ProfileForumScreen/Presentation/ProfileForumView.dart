// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sheepmanager/Features/ProfileScreen/Bloc%20Manager/addUserCubit/add_user_name_cubit.dart';

import 'ProfileForumViewBody.dart';

class ProfileForumView extends StatelessWidget {
  const ProfileForumView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddUserNameCubit>(
      create: (context) => AddUserNameCubit(),
      child: const ProfileForumViewBody(),
    );
  }
}
