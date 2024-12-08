import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:oro_moskofidi_test_app/core/utils/localizations.dart';

class HomeFlow extends StatelessWidget {
  @protected
  final StatefulNavigationShell navigationShell;

  const HomeFlow({
    required this.navigationShell,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.file_copy_outlined),
            activeIcon: const Icon(Icons.file_copy),
            label: context.l10n.filesScreenTitle,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.history_outlined),
            activeIcon: const Icon(Icons.history),
            label: context.l10n.historyScreenTitle,
          ),
        ],
      ),
    );
  }
}
