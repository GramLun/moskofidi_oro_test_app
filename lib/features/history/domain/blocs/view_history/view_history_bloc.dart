import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oro_moskofidi_test_app/features/history/domain/interfaces/view_history_data_source.dart';

part 'view_history_state.dart';
part 'view_history_event.dart';
part 'view_history_bloc.freezed.dart';

@sealed
class ViewHistoryBloc extends Bloc<ViewHistoryEvent, ViewHistoryState> {
  @protected
  final ViewHistoryDataSource viewHistoryDataSource;

  ViewHistoryBloc({
    required this.viewHistoryDataSource,
  }) : super(ViewHistoryState(filesUrlList: viewHistoryDataSource.state)) {
    on<AddViewedFileEvent>((event, emit) async {
      final snapshot = state.filesUrlList;

      await viewHistoryDataSource.put([
        ...snapshot,
        event.fileUrl,
      ]);

      emit(
        ViewHistoryState(filesUrlList: viewHistoryDataSource.state),
      );
    });
    on<ClearViewHistory>((event, emit) async {
      await viewHistoryDataSource.put([]);

      emit(
        ViewHistoryState(filesUrlList: viewHistoryDataSource.state),
      );
    });
  }
}
