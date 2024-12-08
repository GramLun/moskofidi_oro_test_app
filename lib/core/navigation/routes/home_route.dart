import 'package:oro_moskofidi_test_app/core/navigation/models/route.dart';

final class HomeRoute {
  static const files = BaseRoute(
    name: 'files_list_screen',
    path: '/files',
  );
  static const history = BaseRoute(
    path: '/history',
    name: 'history_screen',
  );
}
