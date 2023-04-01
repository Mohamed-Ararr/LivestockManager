// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sheepmanager/Core/Utils/backButton.dart';
import 'package:sheepmanager/Features/AddNewLivestockScreen/Presentation/Widgets/newLivestockInputs.dart';
import 'package:sheepmanager/constValues.dart';

import '../../ExploreLivestockScreen/Presentation/Bloc Manager/AddSheepCubit/add_livestock_cubit.dart';
import '../../ExploreLivestockScreen/Presentation/Bloc Manager/SheepsCubit/sheeps_cubit.dart';

class AddNewSheepViewBody extends StatelessWidget {
  const AddNewSheepViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddLivestockCubit, AddLivestockState>(
      listener: (context, state) {
        if (state is AddLivestockFailure) {
          debugPrint(state.errMsg);
        }

        if (state is AddLivestockSuccess) {
          BlocProvider.of<LivestockCubit>(context).fetchAllSheep();
          GoRouter.of(context).pop();
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          opacity: 0.15,
          blur: 2,
          inAsyncCall: state is AddLivestockLoading ? true : false,
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
                      NewLivestockInputs(),
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
