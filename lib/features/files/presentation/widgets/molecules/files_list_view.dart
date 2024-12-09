import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:go_router/go_router.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

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

  @protected
  Future<void> _saveFileFromNetwork(
    String url,
    BuildContext context,
  ) async {
    late String message;
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    try {
      final response = await http.get(Uri.parse(url));

      final result = await ImageGallerySaver.saveImage(response.bodyBytes);

      if (result['isSuccess'] == true) {
        message = 'Image successfully saved into Files/Images/Pictures.';
        scaffoldMessenger.showSnackBar(SnackBar(
          content: Text(
            message,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
      }
    } catch (e) {
      message = e.toString();
      scaffoldMessenger.showSnackBar(SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ));
    }
  }

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
              onDownloadTap: () {
                _saveFileFromNetwork(url, context);
              },
            ),
            const SizedBox(height: 4),
          ],
        ],
      ),
    );
  }
}
