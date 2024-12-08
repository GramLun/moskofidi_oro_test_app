import 'dart:async';

import 'package:logger/logger.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:oro_moskofidi_test_app/features/history/domain/stores/value_store.dart';
import 'package:oro_moskofidi_test_app/features/history/domain/interfaces/view_history_data_source.dart';

class ViewHistoryStorage extends ValueStore<List<String>>
    implements ViewHistoryDataSource {
  @protected
  final SharedPreferences sharedPreferences;

  @visibleForTesting
  static const kViewHistoryStorageKey = 'viewed_files';

  @protected
  ViewHistoryStorage._({
    required this.sharedPreferences,
    final List<String>? initialValue,
  }) : super(
          (initialValue ?? []),
        );

  factory ViewHistoryStorage.create({
    required final SharedPreferences sharedPreferences,
  }) {
    try {
      final value = sharedPreferences.getStringList(
        kViewHistoryStorageKey,
      );

      return ViewHistoryStorage._(
        initialValue: value,
        sharedPreferences: sharedPreferences,
      );
    } on Object catch (error, stackTrace) {
      Logger().e(
        'failed while creating view history storage',
        error: error,
        stackTrace: stackTrace,
      );
    }

    return ViewHistoryStorage._(
      sharedPreferences: sharedPreferences,
    );
  }

  @override
  FutureOr<void> put(
    final List<String> state,
  ) async {
    super.put(state);

    if (state.isNotEmpty) {
      await sharedPreferences.setStringList(kViewHistoryStorageKey, state);
    }
  }
}
