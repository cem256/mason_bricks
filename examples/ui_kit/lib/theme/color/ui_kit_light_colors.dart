import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color/ui_kit_colors.dart';

final class UiKitLightColors implements UiKitColors {
  // TODO: Customize colors
  @override
  Color get primary => const Color(0xFF007AFF); // Bright Blue

  @override
  Color get onPrimary => Colors.white;

  @override
  Color get secondary => const Color(0xFF34C759); // Green

  @override
  Color get onSecondary => Colors.white;

  @override
  Color get tertiary => const Color(0xFFFF9500); // Orange

  @override
  Color get onTertiary => Colors.white;

  @override
  Color get surface => Colors.white;

  @override
  Color get onSurface => const Color(0xFF1C1C1E); // Almost Black

  @override
  Color get onSurfaceVariant => const Color(0xFF8E8E93); // Gray

  @override
  Color get background => const Color(0xFFF2F2F7); // Light Gray

  @override
  Color get onBackground => const Color(0xFF1C1C1E); // Almost Black

  @override
  Color get error => const Color(0xFFFF3B30); // Red

  @override
  Color get onError => Colors.white;

  @override
  Color get disabled => const Color(0xFFD1D1D6); // Light Gray
}
