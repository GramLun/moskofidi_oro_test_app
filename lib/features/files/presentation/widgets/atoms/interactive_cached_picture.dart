import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class InteractiveCachedPicture extends StatelessWidget {
  @protected
  final String url;

  const InteractiveCachedPicture({
    required this.url,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: CachedNetworkImage(
        imageUrl: url,
        progressIndicatorBuilder: (context, url, state) {
          return const CircularProgressIndicator(
            color: Colors.black,
          );
        },
      ),
    );
  }
}
