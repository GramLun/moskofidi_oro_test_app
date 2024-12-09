import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:oro_moskofidi_test_app/core/utils/localizations.dart';

import 'package:oro_moskofidi_test_app/features/history/presentation/widgets/history.dart';
import 'package:oro_moskofidi_test_app/features/history/domain/blocs/download_history/download_history_bloc.dart';

class DownloadHistoryListView extends StatefulWidget {
  const DownloadHistoryListView({super.key});

  @override
  State<StatefulWidget> createState() => _DownloadHistoryListViewState();
}

class _DownloadHistoryListViewState extends State<DownloadHistoryListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadHistoryBloc, DownloadHistoryState>(
      builder: (context, state) {
        return state.filesUrlList.isEmpty
            ? Center(
                child: Text(context.l10n.emptyMessage),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    ClearHistoryButton(
                      onPressed: (value) {
                        if (value) {
                          (context.read<DownloadHistoryBloc>()).add(
                            const DownloadHistoryEvent.clearStore(),
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    for (final url in state.filesUrlList) ...[
                      HistoryRecordTile(
                        caption: url.fileName,
                      ),
                      const SizedBox(height: 4),
                    ],
                    const SizedBox(height: 16),
                  ],
                ),
              );
      },
    );
  }
}
