part of 'download_history_bloc.dart';

@freezed
class DownloadHistoryEvent with _$DownloadHistoryEvent {
  /// Add new file record to history.
  const factory DownloadHistoryEvent.addUrlToStore(
    final String fileUrl,
  ) = AddDownloadedFileEvent;
}
