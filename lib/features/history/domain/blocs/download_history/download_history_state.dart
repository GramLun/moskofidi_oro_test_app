part of 'download_history_bloc.dart';

@freezed
class DownloadHistoryState with _$DownloadHistoryState {
  const factory DownloadHistoryState({
    /// Files list in download history.
    required final List<String> filesUrlList,
  }) = _DownloadHistoryState;
}
