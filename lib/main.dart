import 'dart:async';

import 'package:logger/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:oro_moskofidi_test_app/app_flow.dart';
import 'package:oro_moskofidi_test_app/app.dart';

void main() {
  runZonedGuarded<void>(
    _run,
    (error, stackTrace) {
      Logger().e(
        'Unhandled error occurs in the root',
        error: error,
        stackTrace: stackTrace,
      );
    },
  );
}

Future<void> _run() async {
  // Create app
  final app = Application();

  // Run app
  return app.runGuarded((container) {
    return UncontrolledProviderScope(
      container: container,
      child: const AppFlow(),
    );
  });
}
