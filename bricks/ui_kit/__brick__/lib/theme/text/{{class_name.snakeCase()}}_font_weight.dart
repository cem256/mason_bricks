import 'package:flutter/material.dart';

///  light = w300
///  regular = w400
///  medium = w500
///  semibold = w600
///  bold = w700
enum {{class_name.pascalCase()}}FontWeight {
  /// light = w300
  light(FontWeight.w300),

  /// regular = w500
  regular(FontWeight.w400),

  /// medium = w500
  medium(FontWeight.w500),

  /// semibold = w600
  semiBold(FontWeight.w600),

  /// bold = w700
  bold(FontWeight.w700);

  const {{class_name.pascalCase()}}FontWeight(this.rawValue);
  final FontWeight rawValue;
}
