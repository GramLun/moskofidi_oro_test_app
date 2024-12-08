import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// SharedPreferences async provider.
/// Should be pre-awaited before app started.
final sharedPreferencesPreResolve = FutureProvider(
  (ref) {
    return SharedPreferences.getInstance();
  },
  name: 'SharedPreferencesPreResolve',
);

/// SharedPreferences provider.
final sharedPreferencesProvider = Provider<SharedPreferences>(
  (ref) {
    assert(
      ref.watch(sharedPreferencesPreResolve).value != null,
      'sharedPreferencesPreResolve should be initialized before app started.',
    );
    return ref.watch(sharedPreferencesPreResolve).value!;
  },
  name: 'SharedPreferencesProvider',
);
