import 'package:{{project_name.snakeCase()}}/app/theme/base/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

final class DarkTheme extends BaseTheme {
  @override
  Iterable<ThemeExtension> get extensions => [
        UIKitThemeExtensions(
          colors: UIKitDarkColors(),
        ),
      ];

  @override
  Brightness get brightness => Brightness.dark;
}
