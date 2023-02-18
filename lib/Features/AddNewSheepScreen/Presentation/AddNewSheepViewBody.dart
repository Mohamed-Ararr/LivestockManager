// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sheepmanager/Core/Utils/backButton.dart';
import 'package:sheepmanager/Features/AddNewSheepScreen/Presentation/Widgets/newSheepInputs.dart';
import 'package:sheepmanager/constValues.dart';

import '../../HomeScreen/Presentation/Bloc Manager/AddSheepCubit/add_sheep_cubit.dart';

class AddNewSheepViewBody extends StatelessWidget {
  const AddNewSheepViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddSheepCubit, AddSheepState>(
      listener: (context, state) {
        if (state is AddSheepFailure) {
          debugPrint(state.errMsg);
        }

        if (state is AddSheepSuccess) {
          debugPrint("success");
          GoRouter.of(context).pop();
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          opacity: 0.15,
          blur: 2,
          inAsyncCall: state is AddSheepLoading ? true : false,
          child: Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: kPaddingRightLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CustomBackButton(),
                      Center(
                        child: Text(
                          "Add New Sheep Forum",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      SizedBox(height: 25),
                      NewSheepInputs(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
