// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sheepmanager/Core/Utils/searchButton.dart';
import 'package:sheepmanager/Features/ProfileScreen/Bloc%20Manager/userCubit/user_cubit.dart';

import '../../../../Core/Utils/colors.dart';
import '../../../../constValues.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String firstName;
    return Padding(
      padding: kPaddingRightLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        decoration: BoxDecoration(
          color: AppColors.secColor,
          borderRadius: kBorderRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocConsumer<UserCubit, UserState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    if (state is UserSuccess) {
                      firstName = state.fistName;
                    } else {
                      firstName = "User";
                    }
                    return SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'Welcome, $firstName!',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          letterSpacing: 1,
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 10),
                const Text(
                  "Find What you are looking for!",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SearchButton(),
          ],
        ),
      ),
    );
  }
}
