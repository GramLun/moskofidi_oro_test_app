import 'package:flutter/material.dart';
import 'package:oro_moskofidi_test_app/features/history/presentation/widgets/molecules/download_history_list_view.dart';
import 'package:oro_moskofidi_test_app/features/history/presentation/widgets/molecules/view_history_list_view.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        ViewHistoryListView(),
        DownloadHistoryListView(),
      ],
    );
  }
}
