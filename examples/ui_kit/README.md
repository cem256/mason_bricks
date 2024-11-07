# UiKit

A Flutter package that helps you build consistent user interfaces with predefined components and layout utilities.

## Features

- 🎨 **Theme System**: Customizable color schemes with multiple theme support
- 📝 **Typography**: Customizable text styles based on Material Design
- 📏 **Layout Utilities**: Pre-built spacing, padding, and border radius components

## Available Classes

#### Theme Extensions
- `UiKitColors` - Customizable color palette for the application
- `UiKitFontWeight` - Predefined font weights (light, regular, medium, semiBold, bold)

#### Layout Components
- `UiKitVGap` - Vertical spacing utility (v0, v4, v8, v12, v16 up to v40)
- `UiKitHGap` - Horizontal spacing utility (v0, v4, v8, v12, v16 up to h40)
- `UiKitPadding` - Padding utility
  - Padding on all sides (all4, all8, all12, up to all40)
  - Horizontal padding only (horizontal4, horizontal8, horizontal12, up to horizontal40)
  - Vertical padding only (vertical4, vertical8, vertical12, up to vertical40)

#### Typography
- `UiKitText` - Text styles utility
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
        fontFamily: UiKitFontFamily.roboto.name,
        extensions: [
          UiKitThemeExtensions(
            colors: UiKitLightColors(),
          ),
        ],
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: UiKitFontFamily.roboto.name,
        extensions: [
          UiKitThemeExtensions(
            colors: UiKitDarkColors(),
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
  // Use UiKitPadding to set the padding
  padding: const UiKitPadding.horizontal16(),
  child: Column(
    children: [
      // Use UiKitVGap to add vertical space
      const UiKitVGap.v12(),
      // Use UiKitText to display text
      Container(
        // Use UiKitPadding to set the padding
        padding: const UiKitPadding.all8(),
        decoration: BoxDecoration(
          // Use context.customColors to set the color
          color: context.customColors.surface,
          // Use UiKitBorderRadius to set the border radius
          borderRadius: const UiKitBorderRadius.v8(),
          border: Border.all(
            color: context.customColors.primary,
          ),
        ),
        child: UiKitText.bodyMedium(
          context,
          'A container with rounded corners',
          // Use UiKitFontWeight to set the font weight
          fontWeight: UiKitFontWeight.medium,
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
          // Use UiKitHGap to add horizontal space
          const UiKitHGap.v8(),
          // Use UiKitText to display text
          UiKitText.bodyMedium(context, 'Button'),
        ],
      ),
    ],
  ),
)
```
