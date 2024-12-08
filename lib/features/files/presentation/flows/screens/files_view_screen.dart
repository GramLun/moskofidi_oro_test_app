import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:oro_moskofidi_test_app/core/utils/mixins/launch_uri.dart';
import 'package:oro_moskofidi_test_app/core/navigation/routes/app_route.dart';

import 'package:oro_moskofidi_test_app/features/files/presentation/widgets/atoms/file_tile.dart';

class FilesViewScreen extends StatefulWidget {
  const FilesViewScreen({super.key});

  @override
  State<FilesViewScreen> createState() => _FilesViewScreenState();
}

class _FilesViewScreenState extends State<FilesViewScreen>
    with LaunchUriStateMixin {
  @visibleForTesting
  static const filesData = [
    // docs
    'https://pdfobject.com/pdf/sample.pdf',
    // images
    'https://images.pexels.com/photos/28857430/pexels-photo-28857430.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/26833902/pexels-photo-26833902.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/29414465/pexels-photo-29414465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/29502178/pexels-photo-29502178.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 12),
              for (final file in filesData) ...[
                FileTile(
                  fileUri: Uri.parse(file),
                  onCardTap: () {
                    context.pushNamed(AppRoute.fileDetails.name);
                  },
                ),
                const SizedBox(height: 4),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
