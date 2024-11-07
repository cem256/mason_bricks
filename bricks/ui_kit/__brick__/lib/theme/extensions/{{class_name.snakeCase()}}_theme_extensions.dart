import 'package:flutter/material.dart';

import 'package:{{class_name.snakeCase()}}/{{class_name.snakeCase()}}.dart';

class {{class_name.pascalCase()}}ThemeExtensions extends ThemeExtension<{{class_name.pascalCase()}}ThemeExtensions> {
  {{class_name.pascalCase()}}ThemeExtensions({
    required this.colors,
  });

  final {{class_name.pascalCase()}}Colors colors;

  @override
  ThemeExtension<{{class_name.pascalCase()}}ThemeExtensions> lerp(covariant ThemeExtension<{{class_name.pascalCase()}}ThemeExtensions>? other, double t) => this;

  @override
  {{class_name.pascalCase()}}ThemeExtensions copyWith({
    {{class_name.pascalCase()}}Colors? colors,
  }) {
    return {{class_name.pascalCase()}}ThemeExtensions(
      colors: colors ?? this.colors,
    );
  }
}

extension {{class_name.pascalCase()}}ThemeExtensionsExtension on BuildContext {
  /// Get the [{{class_name.pascalCase()}}ThemeExtensions]
  {{class_name.pascalCase()}}ThemeExtensions get themeExtensions => Theme.of(this).extension<{{class_name.pascalCase()}}ThemeExtensions>()!;

  /// Get the [{{class_name.pascalCase()}}Colors]
  {{class_name.pascalCase()}}Colors get customColors => Theme.of(this).extension<{{class_name.pascalCase()}}ThemeExtensions>()!.colors;
}
