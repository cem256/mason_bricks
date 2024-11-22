# UIKit

A Flutter package that helps you build consistent user interfaces with predefined components and layout utilities.

## Features

- 🎨 **Theme System**: Customizable color schemes with multiple theme support
- 📝 **Typography**: Customizable text styles based on Material Design
- 📏 **Layout Utilities**: Pre-built spacing, padding, and border radius components

## Available Classes

#### Theme Extensions
- `UIKitColors` - Customizable color palette for the application
- `UIKitFontWeight` - Predefined font weights (light, regular, medium, semiBold, bold)

#### Layout Components
- `UIKitVGap` - Vertical spacing utility (v0, v4, v8, v12, v16 up to v40)
- `UIKitHGap` - Horizontal spacing utility (v0, v4, v8, v12, v16 up to h40)
- `UIKitPadding` - Padding utility
  - Padding on all sides (all4, all8, all12, up to all40)
  - Horizontal padding only (horizontal4, horizontal8, horizontal12, up to horizontal40)
  - Vertical padding only (vertical4, vertical8, vertical12, up to vertical40)

#### Typography
- `UIKitText` - Text styles utility
  - `displayLarge` - Largest display text
  - `displayMedium` - Medium display text
  - `displaySmall` - Small display text
  - `headlineLarge` - Large headline
  - `headlineMedium` - Medium headline
  - `headlineSmall` - Small headline
  - `bodyLarge` - Large body text
  - `bodyMedium` - Medium body text
  - `bodySmall` - Small body text
  - `labelLarge` - Large label text
  - `labelMedium` - Medium label text
  - `labelSmall` - Small label text

## Installation

```dart
import 'package:flutter/material.dart';

import 'package:ui_kit/ui_kit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: UIKitFontFamily.roboto.name,
        extensions: [
          UIKitThemeExtensions(
            colors: UIKitLightColors(),
          ),
        ],
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: UIKitFontFamily.roboto.name,
        extensions: [
          UIKitThemeExtensions(
            colors: UIKitDarkColors(),
          ),
        ],
      ),
      home: const HomeView(),
    );
  }
}

```

## Usage

```dart
Padding(
  // Use UIKitPadding to set the padding
  padding: const UIKitPadding.horizontal16(),
  child: Column(
    children: [
      // Use UIKitVGap to add vertical space
      const UIKitVGap.v12(),
      // Use UIKitText to display text
      Container(
        // Use UIKitPadding to set the padding
        padding: const UIKitPadding.all8(),
        decoration: BoxDecoration(
          // Use context.customColors to set the color
          color: context.customColors.surface,
          // Use UIKitBorderRadius to set the border radius
          borderRadius: const UIKitBorderRadius.v8(),
          border: Border.all(
            color: context.customColors.primary,
          ),
        ),
        child: UIKitText.bodyMedium(
          context,
          'A container with rounded corners',
          // Use UIKitFontWeight to set the font weight
          fontWeight: UIKitFontWeight.medium,
          // Use context.customColors to set the text color
          color: context.customColors.onPrimary,
        ),
      ),
      Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          // Use UIKitHGap to add horizontal space
          const UIKitHGap.v8(),
          // Use UIKitText to display text
          UIKitText.bodyMedium(context, 'Button'),
        ],
      ),
    ],
  ),
)
```
