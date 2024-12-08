import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:oro_moskofidi_test_app/core/navigation/routers/app_router.dart';

class AppFlow extends ConsumerStatefulWidget {
  const AppFlow({super.key});

  @override
  ConsumerState<AppFlow> createState() => _AppFlowState();
}

class _AppFlowState extends ConsumerState<AppFlow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      routerConfig: AppRouter().router,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
    );
  }
}
