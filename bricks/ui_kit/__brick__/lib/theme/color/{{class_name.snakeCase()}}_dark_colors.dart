import 'package:flutter/material.dart';
import 'package:{{class_name.snakeCase()}}/theme/color/{{class_name.snakeCase()}}_colors.dart';

final class {{class_name.pascalCase()}}DarkColors implements {{class_name.pascalCase()}}Colors {
  // TODO: Customize colors

  @override
  Color get primary => const Color(0xFF0A84FF); // Slightly lighter blue

  @override
  Color get onPrimary => Colors.white;

  @override
  Color get secondary => const Color(0xFF30D158); // Slightly lighter green

  @override
  Color get onSecondary => Colors.black;

  @override
  Color get tertiary => const Color(0xFFFFD60A); // Yellow

  @override
  Color get onTertiary => Colors.black;

  @override
  Color get surface => const Color(0xFF1C1C1E); // Dark gray

  @override
  Color get onSurface => Colors.white;

  @override
  Color get onSurfaceVariant => const Color(0xFFAEAEB2); // Light gray

  @override
  Color get background => Colors.black;

  @override
  Color get onBackground => Colors.white;

  @override
  Color get error => const Color(0xFFFF453A); // Slightly lighter red

  @override
  Color get onError => Colors.white;

  @override
  Color get disabled => const Color(0xFF3A3A3C); // Dark gray
}
