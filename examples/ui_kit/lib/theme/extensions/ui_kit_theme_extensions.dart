import 'package:flutter/material.dart';

import 'package:ui_kit/ui_kit.dart';

class UiKitThemeExtensions extends ThemeExtension<UiKitThemeExtensions> {
  UiKitThemeExtensions({
    required this.colors,
  });

  final UiKitColors colors;

  @override
  ThemeExtension<UiKitThemeExtensions> lerp(covariant ThemeExtension<UiKitThemeExtensions>? other, double t) => this;

  @override
  UiKitThemeExtensions copyWith({
    UiKitColors? colors,
  }) {
    return UiKitThemeExtensions(
      colors: colors ?? this.colors,
    );
  }
}

extension UiKitThemeExtensionsExtension on BuildContext {
  /// Get the [UiKitThemeExtensions]
  UiKitThemeExtensions get themeExtensions => Theme.of(this).extension<UiKitThemeExtensions>()!;

  /// Get the [UiKitColors]
  UiKitColors get customColors => Theme.of(this).extension<UiKitThemeExtensions>()!.colors;
}
