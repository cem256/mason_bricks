import 'package:flutter/material.dart';

import 'package:ui_kit/ui_kit.dart';

class UIKitThemeExtensions extends ThemeExtension<UIKitThemeExtensions> {
  UIKitThemeExtensions({
    required this.colors,
  });

  final UIKitColors colors;

  @override
  ThemeExtension<UIKitThemeExtensions> lerp(covariant ThemeExtension<UIKitThemeExtensions>? other, double t) => this;

  @override
  UIKitThemeExtensions copyWith({
    UIKitColors? colors,
  }) {
    return UIKitThemeExtensions(
      colors: colors ?? this.colors,
    );
  }
}

extension UIKitThemeExtensionsExtension on BuildContext {
  /// Get the [UIKitThemeExtensions]
  UIKitThemeExtensions get themeExtensions => Theme.of(this).extension<UIKitThemeExtensions>()!;

  /// Get the [UIKitColors]
  UIKitColors get customColors => Theme.of(this).extension<UIKitThemeExtensions>()!.colors;
}
