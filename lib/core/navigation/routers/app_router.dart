import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:oro_moskofidi_test_app/core/navigation/routes/app_route.dart';
import 'package:oro_moskofidi_test_app/core/navigation/routes/home_route.dart';
import 'package:oro_moskofidi_test_app/core/navigation/routers/home_router.dart';

import 'package:oro_moskofidi_test_app/features/files/presentation/flows/home_flow.dart';
import 'package:oro_moskofidi_test_app/features/files/presentation/flows/screens/file_details_screen.dart';

final _rootAppNavigatorKey = GlobalKey<NavigatorState>();

final class AppRouter {
  final router = GoRouter(
    initialLocation: HomeRoute.files.path,
    navigatorKey: _rootAppNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeFlow(
            navigationShell: navigationShell,
          );
        },
        branches: HomeRouter().router,
      ),
      GoRoute(
        path: AppRoute.fileDetails.path,
        name: AppRoute.fileDetails.name,
        builder: (context, state) => const FileDetailsScreen(),
      ),
    ],
  );
}
