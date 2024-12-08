part of 'view_history_bloc.dart';

@freezed
class ViewHistoryEvent with _$ViewHistoryEvent {
  /// Add new file record to history.
  const factory ViewHistoryEvent.addUrlToStore(
    final String fileUrl,
  ) = AddViewedFileEvent;
}
