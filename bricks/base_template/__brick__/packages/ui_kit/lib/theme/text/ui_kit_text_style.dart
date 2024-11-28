import 'dart:ui' as ui show FontFeature, FontVariation, Shadow, TextLeadingDistribution;

import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class UIKitTextStyle {
  UIKitTextStyle._();

  static TextStyle displayLarge(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.displayLarge?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 57,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 64, 57),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle displayMedium(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.displayMedium?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 45,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 52, 45),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle displaySmall(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.displaySmall?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 36,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 44, 36),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle headlineLarge(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.headlineLarge?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 32,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 40, 32),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle headlineMedium(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.headlineMedium?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 28,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 36, 28),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle headlineSmall(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.headlineSmall?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 24,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 32, 24),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle titleLarge(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.titleLarge?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 22,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 28, 22),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle titleMedium(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.titleMedium?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 16,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 24, 16),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0.15,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle titleSmall(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.titleSmall?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 14,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 20, 14),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0.1,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle labelLarge(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.labelLarge?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 14,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 20, 14),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0.1,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle labelMedium(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.labelMedium?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 12,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 16, 12),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0.5,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle labelSmall(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.labelSmall?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 11,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 16, 11),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0.5,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle bodyLarge(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.bodyLarge?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 16,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 24, 16),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0.15,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle bodyMedium(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.bodyMedium?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 14,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 20, 14),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0.25,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static TextStyle bodySmall(
    BuildContext context, {
    double? lineHeight,
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    UIKitFontWeight? fontWeight,
    UIKitFontFamily? fontFamily,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    TextOverflow? overflow,
  }) =>
      context.textTheme.bodySmall?.copyWith(
        package: UIKitConstants.packageName,
        fontSize: 12,
        fontFamily: fontFamily?.name ?? UIKitFontFamily.roboto.name,
        height: _getHeight(lineHeight ?? 16, 12),
        fontWeight: fontWeight?.rawValue ?? UIKitFontWeight.regular.rawValue,
        inherit: inherit,
        color: color ?? context.customColors.onPrimary,
        backgroundColor: backgroundColor,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing ?? 0.4,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        shadows: shadows,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        overflow: overflow,
      ) ??
      const TextStyle();

  static double? _getHeight(double? lineHeight, double? fontSize) {
    if (lineHeight == null) return null;
    return lineHeight / (fontSize ?? 1);
  }
}

extension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}