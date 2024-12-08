import 'package:logger/logger.dart';
import 'package:flutter/widgets.dart';

/// A [NavigatorObserver] that that capture events when the currently active
/// route changes.
class BaseRouteObserver extends NavigatorObserver {
  /// Creates a [NavigatorObserver].
  BaseRouteObserver();

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route is PageRoute) {
      _captureRoute(route);
    }
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (newRoute is PageRoute) {
      _captureRoute(newRoute);
    }
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route is PageRoute && previousRoute is PageRoute) {
      _captureRouteExit(route);
      _captureRoute(previousRoute);
    }
    super.didPop(route, previousRoute);
  }

  /// Records [route], which specifies the current visual context in app.
  @protected
  void _captureRoute(Route<dynamic> route) {
    final screenName = route.settings.name;
    if (screenName != null) Logger().i('Screen [$screenName] opened');
  }

  /// Records [route], which specifies the current visual context in app.
  @protected
  void _captureRouteExit(Route<dynamic> route) {
    final screenName = route.settings.name;
    if (screenName != null) Logger().i('Screen [$screenName] closed');
  }
}
