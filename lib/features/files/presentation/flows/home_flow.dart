import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:oro_moskofidi_test_app/core/utils/localizations.dart';

class HomeFlow extends ConsumerStatefulWidget {
  @protected
  final StatefulNavigationShell navigationShell;

  const HomeFlow({
    required this.navigationShell,
    super.key,
  });

  @override
  ConsumerState<HomeFlow> createState() {
    return _HomeFlowState();
  }
}

class _HomeFlowState extends ConsumerState<HomeFlow> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (index) {
          widget.navigationShell.goBranch(
            index,
            initialLocation: index == widget.navigationShell.currentIndex,
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
