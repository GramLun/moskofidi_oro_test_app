import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:oro_moskofidi_test_app/core/providers/external_providers.dart';

class Application {
  @protected
  final ProviderContainer container;

  const Application._({
    required this.container,
  });

  /// Create application instance.
  factory Application() {
    final providerContainer = ProviderContainer();

    return Application._(container: providerContainer);
  }

  /// Runs application.
  @nonVirtual
  Future<void> runGuarded(
    final Widget Function(ProviderContainer container) body,
  ) async {
    // initialize dependencies
    await ensureInitialized();

    return runApp(body(container));
  }

  /// Initializes dependencies.
  @protected
  Future<void> ensureInitialized() async {
    // initialize flutter binding
    WidgetsFlutterBinding.ensureInitialized();

    // initialize base plugins
    await container.read(sharedPreferencesPreResolve.future);
  }

  @nonVirtual
  void release() {
    container.dispose();
    FlutterError.onError = FlutterError.presentError;
  }
}
