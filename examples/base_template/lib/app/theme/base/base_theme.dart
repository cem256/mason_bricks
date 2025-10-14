import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

abstract class BaseTheme {
  Brightness get brightness;
  Iterable<ThemeExtension<dynamic>> get extensions;

  ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      extensions: extensions,
      fontFamily: UIKitFontFamily.nunito.name,
      //TODO: Customize widgets here
      typography: Typography.material2021(),
    );
  }
}
