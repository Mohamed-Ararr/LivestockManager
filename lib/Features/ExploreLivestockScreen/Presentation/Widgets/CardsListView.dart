// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_slidable/flutter_slidable.dart";
import "package:flutter_staggered_animations/flutter_staggered_animations.dart";
import "package:flutter_svg/svg.dart";
import "package:go_router/go_router.dart";
import "package:sheepmanager/Core/Utils/EmptyList.dart";
import "package:sheepmanager/Core/Utils/LoadingWidget.dart";
import "package:sheepmanager/Core/Utils/deleteOption.dart";
import "package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart";

import '../../../../Core/Utils/colors.dart';
import '../../../../Core/Utils/router.dart';
import '../../../../constValues.dart';
import "../../../HomeScreen/Data/Models/farm_model.dart";
import "../Bloc Manager/LivestockCubit/Livestock_cubit.dart";
import 'LivestockCard.dart';

class CardsListView extends StatelessWidget {
  const CardsListView({super.key, required this.farm});

  final FarmModel farm;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FarmCubitCubit, FarmCubitState>(
      builder: (context, state) {
        debugPrint("the state is $state");
        if (state is FarmCubitSuccess) {
          print(farm.livestockList?.length);
          if (farm.livestockList?.length == null) {
            return const EmptyListWidget();
          } else {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              // itemCount: state.livestockList.length,
              itemCount: farm.livestockList?.length,
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredList(
                  duration: const Duration(milliseconds: 1500),
                  position: index,
                  child: SlideAnimation(
                    horizontalOffset: 300,
                    child: FadeInAnimation(
                      child: Slidable(
                        actionPane: const SlidableDrawerActionPane(),
                        secondaryActions: const [
                          // DeleteOption(
                          //   index: index,
                          //   livestock: farm.livestockList?[index],
                          //   farm: farm,
                          //   isFarm: false,
                          // ),
                        ],
                        child: SheepCard(
                          // livestock: state.livestockList[index],
                          livestock: farm.livestockList?[index],
                          onTap: () => GoRouter.of(context).push(
                            AppRouter.showSheepInfoView,
                            // extra: state.livestockList[index],
                            extra: {
                              "livestock": farm.livestockList?[index],
                              "farm": farm,
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
        } else {
          return const EmptyListWidget();
        }
      },
    );
  }
}
