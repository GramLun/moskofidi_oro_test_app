import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:oro_moskofidi_test_app/core/navigation/routes/app_route.dart';

import 'package:oro_moskofidi_test_app/features/files/domain/models/value_objects/file.dart';
import 'package:oro_moskofidi_test_app/features/files/presentation/widgets/atoms/file_tile.dart';

class FilesListView extends StatelessWidget {
  @protected
  final UnmodifiableListView<String> source;

  const FilesListView({
    required this.source,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 12),
          for (final url in source) ...[
            FileTile(
              file: File.fromUrl(url),
              onCardTap: () {
                context.pushNamed(
                  AppRoute.fileDetails.name,
                  pathParameters: {'url': url},
                );
              },
            ),
            const SizedBox(height: 4),
          ],
        ],
      ),
    );
  }
}
