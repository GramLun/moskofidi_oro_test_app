import 'dart:async';

import 'package:logger/logger.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

mixin LaunchUriStateMixin<T extends StatefulWidget> on State<T> {
  @protected
  late bool canLaunchUri;

  @override
  void initState() {
    super.initState();

    canLaunchUri = true;
  }

  @protected
  Future<bool> launch(
    final Uri uri, {
    final LaunchMode mode = LaunchMode.externalApplication,
  }) async {
    try {
      if (!canLaunchUri) {
        return false;
      }

      if (!mounted) return false;
      setState(() => canLaunchUri = false);

      return await launchUrl(uri, mode: mode);
    } on Object catch (error, stackTrace) {
      Logger().e(
        'Error while launching uri',
        error: error,
        stackTrace: stackTrace,
      );

      unawaited(onLaunchError(uri));
      return false;
    } finally {
      canLaunchUri = true;
      if (mounted) setState(() {});
    }
  }

  @protected
  Future<void> onLaunchError(
    final Uri uri,
  ) async {}
}
