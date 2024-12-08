import 'package:flutter/material.dart';

import 'package:oro_moskofidi_test_app/core/helpers/localizations.dart';
import 'package:oro_moskofidi_test_app/core/utils/mixins/launch_uri.dart';

class HistoryViewScreen extends StatefulWidget {
  const HistoryViewScreen({super.key});

  @override
  State<HistoryViewScreen> createState() => _HistoryViewScreenState();
}

class _HistoryViewScreenState extends State<HistoryViewScreen>
    with LaunchUriStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Text(
            context.l10n.historyScreenTitle,
          ),
        ),
      ),
    );
  }
}
