import 'package:oro_moskofidi_test_app/features/history/domain/stores/value_store.dart';

/// A data source that listens to changes in download history.
abstract class DownloadHistoryDataSource implements ValueStore<List<String>> {}
