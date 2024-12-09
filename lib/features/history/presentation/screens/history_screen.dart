import 'package:flutter/material.dart';
import 'package:oro_moskofidi_test_app/core/utils/localizations.dart';

import 'package:oro_moskofidi_test_app/features/history/presentation/widgets/history.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(context.l10n.historyScreenTitle),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(text: context.l10n.viewingHistoryTabCaption),
                Tab(text: context.l10n.downloadingHistoryTabCaption),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ViewHistoryListView(),
              DownloadHistoryListView(),
            ],
          ),
        ),
      ),
    );
  }
}
