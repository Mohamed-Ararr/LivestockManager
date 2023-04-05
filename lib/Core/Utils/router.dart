import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Features/AddNewFarmScreen/Presentation/AddNewFarmView.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/FarmDetailedView.dart';
import 'package:sheepmanager/Features/HomeScreen/Data/Models/farm_model.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Add%20Farm%20Cubit/cubit/add_farm_cubit.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/Bloc%20Manager/Farm%20Cubit/cubit/farm_cubit_cubit.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/HomeView.dart';

import 'package:sheepmanager/Features/ProfileScreen/Profile/Presentation/ProfileView.dart';
import 'package:sheepmanager/Features/SplashScreen/Presentation/SplashView.dart';

import '../../Features/AddNewLivestockScreen/Presentation/AddNewLivestockView.dart';
import '../../Features/EditFarmScreen/Presentation/EditFarmView.dart';
import '../../Features/ExploreLivestockScreen/Data/Model/livestock_model.dart';
import '../../Features/ExploreLivestockScreen/Presentation/Bloc Manager/AddLivestockCubit/add_livestock_cubit.dart';
import '../../Features/ExploreLivestockScreen/Presentation/Bloc Manager/LivestockCubit/Livestock_cubit.dart';

import '../../Features/ExploreLivestockScreen/Presentation/EditLivestockSreen/Presentation/EditLivestockView.dart';
import '../../Features/ExploreLivestockScreen/Presentation/ExploreLivestockView.dart';
import '../../Features/ExploreLivestockScreen/Presentation/ShowLivestockInfo/Presentation/ShowLivestockInfoView.dart';
import '../../Features/ProfileScreen/ProfileForumScreen/Presentation/ProfileForumView.dart';

class AppRouter {
  static String homeView = "/homeView";
  static String profileView = "/profileView";
  static String profileForumView = "/profileForumView";
  static String addNewSheepView = "/addNewSheepView";
  static String editSheepView = "/editSheepView";
  static String showSheepInfoView = "/showSheepInfoView";
  static String exploreLivestockView = "/exploreLivestockView";
  static String farmDetailedView = "/farmDetailedView";
  static String addNewFarmView = "/addNewFarmView";
  static String editFarmView = "/editFarmView";

  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: profileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: profileForumView,
        builder: (context, state) => const ProfileForumView(),
      ),
      GoRoute(
        path: exploreLivestockView,
        builder: (context, state) => const ExploreLivestockView(),
      ),
      GoRoute(
        path: farmDetailedView,
        builder: (context, state) => BlocProvider(
          create: (context) => FarmCubitCubit(),
          child: FarmDetailedView(farm: state.extra as FarmModel),
        ),
      ),
      GoRoute(
        path: addNewFarmView,
        builder: (context, state) => BlocProvider(
          create: (context) => AddFarmCubit(),
          child: const AddNewFarmView(),
        ),
      ),
      GoRoute(
        path: addNewSheepView,
        builder: (context, state) => BlocProvider(
          create: (context) => AddLivestockCubit(),
          child: const AddNewSheepView(),
        ),
      ),
      GoRoute(
        path: editSheepView,
        builder: (context, state) => BlocProvider(
          create: (context) => LivestockCubit(),
          child: EditLivestockView(sheep: state.extra as LivestockModel),
        ),
      ),
      GoRoute(
        path: showSheepInfoView,
        builder: (context, state) => BlocProvider(
          create: (context) => LivestockCubit(),
          child: ShowLivestockInfoView(sheep: state.extra as LivestockModel),
        ),
      ),
      GoRoute(
        path: editFarmView,
        builder: (context, state) => const EditFarmView(),
      ),
    ],
  );
}
