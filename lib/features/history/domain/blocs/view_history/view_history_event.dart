part of 'view_history_bloc.dart';

@freezed
sealed class ViewHistoryEvent with _$ViewHistoryEvent {
  /// Add new file record to history.
  const factory ViewHistoryEvent.addUrlToStore(
    final String fileUrl,
  ) = AddViewedFileEvent;

  /// Delete all records from store.
  const factory ViewHistoryEvent.clearStore() = ClearViewHistory;
}
