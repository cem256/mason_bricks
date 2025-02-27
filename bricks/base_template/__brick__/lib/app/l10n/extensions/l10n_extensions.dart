import 'package:{{project_name.snakeCase()}}/app/l10n/generated/strings.g.dart';
import 'package:flutter/material.dart';

extension L10nExtension on BuildContext {
  Translations get l10n => Translations.of(this);
}
