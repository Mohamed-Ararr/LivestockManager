// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/confirmButton.dart';
import 'package:sheepmanager/Core/Utils/customTextField.dart';
import 'package:sheepmanager/Features/ProfileScreen/Bloc%20Manager/userCubit/user_cubit.dart';
import 'package:sheepmanager/Features/ProfileScreen/Data/Model/user_model.dart';
import 'package:sheepmanager/constValues.dart';

import '../../../../Core/Utils/backButton.dart';
import '../../Bloc Manager/addUserCubit/add_user_name_cubit.dart';

class ProfileForumViewBody extends StatefulWidget {
  const ProfileForumViewBody({super.key});

  @override
  State<ProfileForumViewBody> createState() => _ProfileForumViewBodyState();
}

class _ProfileForumViewBodyState extends State<ProfileForumViewBody> {
  String? firstName;
  String? lastName;

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode validateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kPaddingRightLeft,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              autovalidateMode: validateMode,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBackButton(),
                  const SizedBox(height: 25),
                  const Center(
                      child: Text(
                    "Edit Owner Forum",
                    style: TextStyle(fontSize: 22),
                  )),
                  const SizedBox(height: 35),
                  CustomTextField(
                    keyboardType: TextInputType.text,
                    label: "First Name",
                    hint: "Enter Your Name",
                    onChanged: (value) {
                      firstName = value;
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    keyboardType: TextInputType.text,
                    label: "Last Name",
                    hint: "Enter Your Last Name",
                    onChanged: (value) {
                      lastName = value;
                    },
                  ),
                  const SizedBox(height: 35),
                  ConfirmButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        UserModel user = UserModel(
                          firstName ?? "User",
                          lastName ?? "User",
                        );

                        BlocProvider.of<AddUserNameCubit>(context)
                            .addUser(user);
                        BlocProvider.of<UserCubit>(context).getActuallUser();
                        GoRouter.of(context).pop();
                        user.delete();
                      } else {
                        setState(() {
                          validateMode = AutovalidateMode.always;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
