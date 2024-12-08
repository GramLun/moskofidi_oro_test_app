import 'package:flutter/widgets.dart';

import 'package:oro_moskofidi_test_app/core/utils/localizations.dart';

class DownloadHistoryListView extends StatefulWidget {
  const DownloadHistoryListView({super.key});

  @override
  State<StatefulWidget> createState() => _DownloadHistoryListViewState();
}

class _DownloadHistoryListViewState extends State<DownloadHistoryListView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.l10n.emptyMessage),
    );
  }
}
