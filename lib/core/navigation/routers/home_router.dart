import 'package:go_router/go_router.dart';

import 'package:oro_moskofidi_test_app/core/observers/route_observer.dart';
import 'package:oro_moskofidi_test_app/core/navigation/routes/home_route.dart';

import 'package:oro_moskofidi_test_app/features/history/presentation/screens/history_view_screen.dart';
import 'package:oro_moskofidi_test_app/features/files/presentation/flows/screens/files_view_screen.dart';

final class HomeRouter {
  final router = [
    StatefulShellBranch(
      observers: [
        BaseRouteObserver(),
      ],
      routes: [
        GoRoute(
          path: HomeRoute.files.path,
          name: HomeRoute.files.name,
          builder: (context, state) => const FilesViewScreen(),
        ),
      ],
    ),
    StatefulShellBranch(
      observers: [
        BaseRouteObserver(),
      ],
      routes: [
        GoRoute(
          path: HomeRoute.history.path,
          name: HomeRoute.history.name,
          builder: (context, state) => const HistoryViewScreen(),
        ),
      ],
    ),
  ];
}
