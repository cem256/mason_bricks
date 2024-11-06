import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color/ui_kit_colors.dart';

final class UIKitDarkColors implements UIKitColors {
  // TODO: Customize colors

  @override
  Color get primary => const Color(0xFF0A84FF);

  @override
  Color get onPrimary => Colors.white;

  @override
  Color get secondary => const Color(0xFF30D158);

  @override
  Color get onSecondary => Colors.black;

  @override
  Color get tertiary => const Color(0xFFFFD60A);

  @override
  Color get onTertiary => Colors.black;

  @override
  Color get surface => const Color(0xFF1C1C1E);

  @override
  Color get onSurface => Colors.white;

  @override
  Color get onSurfaceVariant => const Color(0xFFAEAEB2);

  @override
  Color get background => Colors.black;

  @override
  Color get onBackground => Colors.white;

  @override
  Color get error => const Color(0xFFFF453A);

  @override
  Color get onError => Colors.white;

  @override
  Color get disabled => const Color(0xFF3A3A3C);
}
