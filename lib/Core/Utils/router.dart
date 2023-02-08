import 'package:go_router/go_router.dart';
import 'package:sheepmanager/Features/HomeScreen/Presentation/HomeView.dart';
import 'package:sheepmanager/Features/SplashScreen/Presentation/SplashView.dart';

class AppRouter {
  static String homeView = "/homeView";

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
    ],
  );
}
