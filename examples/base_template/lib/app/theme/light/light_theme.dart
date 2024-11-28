import 'package:base_template/app/theme/base/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

final class LightTheme extends BaseTheme {
  @override
  Iterable<ThemeExtension> get extensions => [
        UIKitThemeExtensions(
          colors: UIKitLightColors(),
        ),
      ];

  @override
  Brightness get brightness => Brightness.light;
}
