import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/HomeView.dart';
import 'package:sheepmanager/Features/ProfileScreen/Presentation/ProfileView.dart';
import 'package:sheepmanager/Features/SplashScreen/Presentation/SplashView.dart';

class AppRouter {
  static String homeView = "/homeView";
  static String profileView = "/profileView";

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
    ],
  );
}
