import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oro_moskofidi_test_app/features/history/domain/interfaces/download_history_data_source.dart';

part 'download_history_state.dart';
part 'download_history_event.dart';
part 'download_history_bloc.freezed.dart';

@sealed
class DownloadHistoryBloc
    extends Bloc<DownloadHistoryEvent, DownloadHistoryState> {
  @protected
  final DownloadHistoryDataSource downloadHistoryDataSource;

  DownloadHistoryBloc({
    required this.downloadHistoryDataSource,
  }) : super(DownloadHistoryState(
            filesUrlList: downloadHistoryDataSource.state)) {
    on<AddDownloadedFileEvent>((event, emit) async {
      final snapshot = state.filesUrlList;

      await downloadHistoryDataSource.put([
        ...snapshot,
        event.fileUrl,
      ]);

      emit(DownloadHistoryState(filesUrlList: downloadHistoryDataSource.state));
    });
  }
}
