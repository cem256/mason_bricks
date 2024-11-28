import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color/ui_kit_colors.dart';

final class UIKitLightColors implements UIKitColors {
  // TODO: Customize colors
  @override
  Color get primary => const Color(0xFF007AFF);

  @override
  Color get onPrimary => Colors.black;

  @override
  Color get secondary => const Color(0xFF34C759);

  @override
  Color get onSecondary => Colors.white;

  @override
  Color get tertiary => const Color(0xFFFF9500);

  @override
  Color get onTertiary => Colors.white;

  @override
  Color get surface => Colors.white;

  @override
  Color get onSurface => const Color(0xFF1C1C1E);

  @override
  Color get onSurfaceVariant => const Color(0xFF8E8E93);

  @override
  Color get background => const Color(0xFFF2F2F7);

  @override
  Color get onBackground => const Color(0xFF1C1C1E);

  @override
  Color get error => const Color(0xFFFF3B30);

  @override
  Color get onError => Colors.white;

  @override
  Color get disabled => const Color(0xFFD1D1D6);
}
