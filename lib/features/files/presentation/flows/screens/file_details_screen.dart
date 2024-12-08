import 'package:flutter/material.dart';

import 'package:oro_moskofidi_test_app/core/utils/localizations.dart';
import 'package:oro_moskofidi_test_app/features/files/presentation/widgets/files.dart';

class FileDetailsScreen extends StatelessWidget {
  @protected
  final String url;

  const FileDetailsScreen({
    required this.url,
    super.key,
  });

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
        child: InteractiveCachedPicture(url: url),
      ),
    );
  }
}
