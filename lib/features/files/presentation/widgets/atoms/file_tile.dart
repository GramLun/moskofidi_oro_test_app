import 'package:flutter/material.dart';

class FileTile extends StatelessWidget {
  @protected
  final Uri fileUri;

  @protected
  final VoidCallback? onCardTap;

  @protected
  final VoidCallback? onDownloadTap;

  const FileTile({
    required this.fileUri,
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
              Text(fileUri.path.split('/').last),
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
