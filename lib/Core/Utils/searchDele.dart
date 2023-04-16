// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/router.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart';
import '../../Features/ExploreLivestockScreen/Data/Model/livestock_model.dart';
import '../../Features/ExploreLivestockScreen/Presentation/Bloc Manager/LivestockCubit/Livestock_cubit.dart';
import '../../Features/ExploreLivestockScreen/Presentation/Widgets/LivestockCard.dart';
import 'EmptyList.dart';
import 'colors.dart';
import 'deleteOption.dart';

class SearchBar extends SearchDelegate {
  final FarmModel farm;

  SearchBar(this.farm);

  @override
  TextStyle? get searchFieldStyle {
    return const TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.mainColor,
        elevation: 0,
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query.isEmpty
              ? GoRouter.of(context).pop([context, query])
              : query = "";
        },
        icon: const Icon(FontAwesomeIcons.xmark),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        BlocProvider.of<LivestockCubit>(context).fetchAllSheep();
        GoRouter.of(context).pop();
      },
      icon: const Icon(FontAwesomeIcons.arrowLeft),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocBuilder<FarmCubitCubit, FarmCubitState>(
      builder: (context, state) {
        debugPrint("the state is $state");
        if (state is FarmCubitSuccess) {
          if (farm.livestockList?.length == null) {
            return const EmptyListWidget();
          } else {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Suggestions",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
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
                  ),
                ],
              ),
            );
          }
        } else {
          return const EmptyListWidget();
        }
      },
    );
  }
}
