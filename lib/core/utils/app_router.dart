import 'package:go_router/go_router.dart';

import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/root/presentation/views/root_view.dart';

abstract class AppRouter {
  static const String kHomeView = '/HomeView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const RootView();
      },
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) {
        return const HomeView();
      },
    ),
  ]);
}
