import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:oro_moskofidi_test_app/core/providers/app_providers.dart';

import 'package:oro_moskofidi_test_app/features/history/domain/blocs/view_history/view_history_bloc.dart';
import 'package:oro_moskofidi_test_app/features/history/domain/blocs/download_history/download_history_bloc.dart';

/// ViewHistoryBloc provider.
final viewHistoryBlocProvider = Provider.autoDispose<ViewHistoryBloc>(
  (ref) {
    final bloc = ViewHistoryBloc(
      viewHistoryDataSource: ref.watch(viewHistoryDataSource),
    );
    ref.onDispose(bloc.close);
    return bloc;
  },
  name: 'ViewHistoryBlocProvider',
);

/// DownloadHistoryBloc provider.
final downloadHistoryBlocProvider = Provider.autoDispose<DownloadHistoryBloc>(
  (ref) {
    final bloc = DownloadHistoryBloc(
      downloadHistoryDataSource: ref.watch(downloadHistoryDataSource),
    );
    ref.onDispose(bloc.close);
    return bloc;
  },
  name: 'DownloadHistoryBlocProvider',
);
