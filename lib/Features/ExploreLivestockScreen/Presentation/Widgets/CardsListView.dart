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

import '../../../../Core/Utils/colors.dart';
import '../../../../Core/Utils/router.dart';
import '../../../../constValues.dart';
import "../Bloc Manager/LivestockCubit/Livestock_cubit.dart";
import 'LivestockCard.dart';

class CardsListView extends StatelessWidget {
  const CardsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LivestockCubit, LivestockState>(
      builder: (context, state) {
        if (state is LivestockSuccess) {
          if (state.livestockList.isNotEmpty) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.livestockList.length,
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredList(
                  duration: const Duration(milliseconds: 1500),
                  position: index,
                  child: SlideAnimation(
                    horizontalOffset: 300,
                    child: FadeInAnimation(
                      child: Slidable(
                        actionPane: const SlidableDrawerActionPane(),
                        secondaryActions: [
                          DeleteOption(
                              livestock: state.livestockList[index],
                              isFarm: false),
                        ],
                        child: SheepCard(
                          sheep: state.livestockList[index],
                          onTap: () => GoRouter.of(context).push(
                            AppRouter.showSheepInfoView,
                            extra: state.livestockList[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const EmptyListWidget();
          }
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
