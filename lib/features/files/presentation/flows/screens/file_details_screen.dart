import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:oro_moskofidi_test_app/core/utils/localizations.dart';

import 'package:oro_moskofidi_test_app/features/files/presentation/widgets/files.dart';
import 'package:oro_moskofidi_test_app/features/history/domain/blocs/view_history/view_history_bloc.dart';

class FileDetailsScreen extends StatefulWidget {
  @protected
  final String url;

  const FileDetailsScreen({
    required this.url,
    super.key,
  });

  @override
  State<FileDetailsScreen> createState() => _FileDetailsScreenState();
}

class _FileDetailsScreenState extends State<FileDetailsScreen> {
  @override
  void initState() {
    super.initState();

    (context.read<ViewHistoryBloc>()).add(
      ViewHistoryEvent.addUrlToStore(widget.url),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.l10n.fileScreenTitle,
        ),
      ),
      body: Center(
        child: InteractiveCachedPicture(url: widget.url),
      ),
    );
  }
}
