import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:oro_moskofidi_test_app/core/navigation/routers/app_router.dart';
import 'package:oro_moskofidi_test_app/features/history/app/providers/history_providers.dart';

class AppFlow extends ConsumerStatefulWidget {
  const AppFlow({super.key});

  @override
  ConsumerState<AppFlow> createState() => _AppFlowState();
}

class _AppFlowState extends ConsumerState<AppFlow> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // blocs
        BlocProvider.value(value: ref.watch(viewHistoryBlocProvider)),
        BlocProvider.value(value: ref.watch(downloadHistoryBlocProvider)),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
        routerConfig: AppRouter().router,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
      ),
    );
  }
}
