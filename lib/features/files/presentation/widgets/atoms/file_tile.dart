import 'package:flutter/material.dart';

import 'package:oro_moskofidi_test_app/features/files/domain/models/value_objects/file.dart';

class FileTile extends StatelessWidget {
  @protected
  final File file;

  @protected
  final VoidCallback? onCardTap;

  @protected
  final VoidCallback? onDownloadTap;

  const FileTile({
    required this.file,
    this.onDownloadTap,
    this.onCardTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFF2F2F2),
      elevation: 0,
      child: InkWell(
        onTap: onCardTap,
        radius: 20,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(file.name),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.download,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
