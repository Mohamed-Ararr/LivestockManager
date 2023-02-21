// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Core/Utils/router.dart';
import 'package:sheepmanager/Core/Utils/soldOption.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Model/sheep_model.dart';

import '../../Features/HomeScreen/Presentation/Bloc Manager/SheepsCubit/sheeps_cubit.dart';
import '../../Features/HomeScreen/Presentation/Widgets/SheepCard.dart';
import 'colors.dart';
import 'deleteOption.dart';

class SearchBar extends SearchDelegate {
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
        BlocProvider.of<SheepsCubit>(context).fetchAllSheep();
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
    return BlocBuilder<SheepsCubit, SheepsState>(
      builder: (context, state) {
        if (state is SheepsSuccess) {
          List<SheepModel> suggestions = state.sheepList.where((sheep) {
            final result = sheep.id.toLowerCase();
            final input = query.toLowerCase();
            return result.contains(input);
          }).toList();
          return SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
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
                  physics: const BouncingScrollPhysics(),
                  itemCount: suggestions.length,
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
                              DeleteOption(sheep: suggestions[index]),
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                child: SoldOption(sheep: suggestions[index]),
                              ),
                            ],
                            child: SheepCard(
                              sheep: suggestions[index],
                              onTap: () => GoRouter.of(context).push(
                                AppRouter.showSheepInfoView,
                                extra: state.sheepList[index],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
