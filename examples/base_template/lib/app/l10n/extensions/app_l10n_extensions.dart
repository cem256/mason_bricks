import 'package:base_template/app/l10n/generated/strings.g.dart';
import 'package:flutter/material.dart';

extension AppL10nExtension on BuildContext {
  Translations get l10n => Translations.of(this);
}
