import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/HomeView.dart';

import 'package:sheepmanager/Features/ProfileScreen/Profile/Presentation/ProfileView.dart';
import 'package:sheepmanager/Features/SplashScreen/Presentation/SplashView.dart';

import '../../Features/AddNewSheepScreen/Presentation/AddNewSheepView.dart';
import '../../Features/ExploreLivestockScreen/Data/Model/sheep_model.dart';
import '../../Features/ExploreLivestockScreen/Presentation/Bloc Manager/AddSheepCubit/add_sheep_cubit.dart';
import '../../Features/ExploreLivestockScreen/Presentation/Bloc Manager/SheepsCubit/sheeps_cubit.dart';
import '../../Features/ExploreLivestockScreen/Presentation/EditSheepSreen/Presentation/EditSheepView.dart';
import '../../Features/ExploreLivestockScreen/Presentation/ShowSheepInfo/Presentation/ShowSheepInfoView.dart';
import '../../Features/ProfileScreen/ProfileForumScreen/Presentation/ProfileForumView.dart';

class AppRouter {
  static String homeView = "/homeView";
  static String profileView = "/profileView";
  static String profileForumView = "/profileForumView";
  static String addNewSheepView = "/addNewSheepView";
  static String editSheepView = "/editSheepView";
  static String showSheepInfoView = "/showSheepInfoView";

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
        path: addNewSheepView,
        builder: (context, state) => BlocProvider(
          create: (context) => AddSheepCubit(),
          child: const AddNewSheepView(),
        ),
      ),
      GoRoute(
        path: editSheepView,
        builder: (context, state) => BlocProvider(
          create: (context) => SheepsCubit(),
          child: EditSheepView(sheep: state.extra as SheepModel),
        ),
      ),
      GoRoute(
        path: showSheepInfoView,
        builder: (context, state) => BlocProvider(
          create: (context) => SheepsCubit(),
          child: ShowSheepInfoView(sheep: state.extra as SheepModel),
        ),
      ),
    ],
  );
}
