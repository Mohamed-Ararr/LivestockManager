// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sheepmanager/Features/ProfileScreen/Bloc%20Manager/userCubit/user_cubit.dart';
import 'package:sheepmanager/Features/ProfileScreen/Profile/Presentation/Widgets/tableRows.dart';

class InformationTable extends StatefulWidget {
  const InformationTable({super.key});

  @override
  State<InformationTable> createState() => _InformationTableState();
}

class _InformationTableState extends State<InformationTable> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is UserSuccess) {
          return TableRows(
            firstName: state.fistName,
            lastName: state.lastName,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
