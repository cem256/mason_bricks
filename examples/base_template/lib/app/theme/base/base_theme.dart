import 'package:flutter/material.dart';

abstract class BaseTheme {
  Brightness get brightness;
  Iterable<ThemeExtension<dynamic>> get extensions;

  ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      extensions: extensions,
      //TODO: Customize widgets here
      typography: Typography.material2021(),
    );
  }
}
