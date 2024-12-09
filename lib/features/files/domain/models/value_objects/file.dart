import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';

import 'package:oro_moskofidi_test_app/core/utils/localizations.dart';

@immutable
class File extends Equatable {
  @nonVirtual
  final Uri uri;

  @nonVirtual
  final String name;

  const File({
    required this.uri,
    required this.name,
  });

  factory File.fromUrl(final String url) {
    return File(
      uri: Uri.parse(url),
      name: url.fileName,
    );
  }

  @override
  List<Object?> get props => [
        uri,
        name,
      ];
}
