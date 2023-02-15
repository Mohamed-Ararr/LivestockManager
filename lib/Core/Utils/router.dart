import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/EditSheepSreen/Presentation/EditSheepView.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/HomeView.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/ShowSheepInfo/Presentation/ShowSheepInfoView.dart';
import 'package:sheepmanager/Features/ProfileScreen/Presentation/ProfileView.dart';
import 'package:sheepmanager/Features/SplashScreen/Presentation/SplashView.dart';

import '../../Features/AddNewSheepScreen/Presentation/AddNewSheepView.dart';
import '../../Features/ProfileForumScreen/Presentation/ProfileForumView.dart';

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
        builder: (context, state) => const AddNewSheepView(),
      ),
      GoRoute(
        path: editSheepView,
        builder: (context, state) => const EditSheepView(),
      ),
      GoRoute(
        path: showSheepInfoView,
        builder: (context, state) => const ShowSheepInfoView(),
      ),
    ],
  );
}
