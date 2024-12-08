import 'dart:async';

import 'package:logger/logger.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:oro_moskofidi_test_app/features/history/domain/stores/value_store.dart';
import 'package:oro_moskofidi_test_app/features/history/domain/interfaces/download_history_data_source.dart';

class DownloadHistoryStorage extends ValueStore<List<String>>
    implements DownloadHistoryDataSource {
  @protected
  final SharedPreferences sharedPreferences;

  @visibleForTesting
  static const kDownloadHistoryStorageKey = 'downloaded_files';

  @protected
  DownloadHistoryStorage._({
    required this.sharedPreferences,
    final List<String>? initialValue,
  }) : super(
          (initialValue ?? ['']),
        );

  factory DownloadHistoryStorage.create({
    required final SharedPreferences sharedPreferences,
  }) {
    try {
      final value = sharedPreferences.getStringList(
        kDownloadHistoryStorageKey,
      );

      return DownloadHistoryStorage._(
        initialValue: value,
        sharedPreferences: sharedPreferences,
      );
    } on Object catch (error, stackTrace) {
      Logger().e(
        'failed while creating download history storage',
        error: error,
        stackTrace: stackTrace,
      );
    }

    return DownloadHistoryStorage._(
      sharedPreferences: sharedPreferences,
    );
  }

  @override
  FutureOr<void> put(
    final List<String> state,
  ) async {
    super.put(state);

    if (state.isEmpty) {
      await sharedPreferences.remove(kDownloadHistoryStorageKey);
    } else {
      await sharedPreferences.setStringList(kDownloadHistoryStorageKey, state);
    }
  }
}
