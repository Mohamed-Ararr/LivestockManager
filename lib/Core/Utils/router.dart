import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Features/AddNewFarmScreen/Presentation/AddNewFarmView.dart';
import 'package:sheepmanager/Features/FarmDetailedScreen/Presentation/FarmDetailedView.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/HomeView.dart';

import 'package:sheepmanager/Features/ProfileScreen/Profile/Presentation/ProfileView.dart';
import 'package:sheepmanager/Features/SplashScreen/Presentation/SplashView.dart';

import '../../Features/AddNewLivestockScreen/Presentation/AddNewLivestockView.dart';
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
        builder: (context, state) => const FarmDetailedView(),
      ),
      GoRoute(
        path: addNewFarmView,
        builder: (context, state) => const AddNewFarmView(),
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
    ],
  );
}
