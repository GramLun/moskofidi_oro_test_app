import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:oro_moskofidi_test_app/core/providers/external_providers.dart';

import 'package:oro_moskofidi_test_app/features/history/data/storages/view_history_storage.dart';
import 'package:oro_moskofidi_test_app/features/history/data/storages/download_history_storage.dart';

import 'package:oro_moskofidi_test_app/features/history/domain/interfaces/download_history_data_source.dart';
import 'package:oro_moskofidi_test_app/features/history/domain/interfaces/view_history_data_source.dart';

/// ViewHistoryDataSource provider.
final viewHistoryDataSource = Provider<ViewHistoryDataSource>(
  (ref) {
    final storage = ViewHistoryStorage.create(
      sharedPreferences: ref.watch(sharedPreferencesProvider),
    );

    ref.onDispose(storage.close);
    return storage;
  },
  name: 'ViewHistoryDataSourceProvider',
);

/// DownloadHistoryDataSource provider.
final downloadHistoryDataSource = Provider<DownloadHistoryDataSource>(
  (ref) {
    final storage = DownloadHistoryStorage.create(
      sharedPreferences: ref.watch(sharedPreferencesProvider),
    );

    ref.onDispose(storage.close);
    return storage;
  },
  name: 'DownloadHistoryDataSourceProvider',
);
