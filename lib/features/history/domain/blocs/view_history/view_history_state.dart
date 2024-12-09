part of 'view_history_bloc.dart';

@freezed
class ViewHistoryState with _$ViewHistoryState {
  const factory ViewHistoryState({
    /// Files list in view history.
    required final List<String> filesUrlList,
  }) = _ViewHistoryState;
}
