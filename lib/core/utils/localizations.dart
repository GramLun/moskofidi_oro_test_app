import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizationsExtension on BuildContext {
  AppLocalizations get l10n {
    return AppLocalizations.of(this);
  }
}

extension UrlGetNameExtension on String {
  String get fileName {
    return split('/').last.split('?').first;
  }
}
