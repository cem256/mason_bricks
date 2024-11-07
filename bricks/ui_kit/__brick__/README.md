# {{class_name.pascalCase()}}

A Flutter package that helps you build consistent user interfaces with predefined components and layout utilities.

## Features

- 🎨 **Theme System**: Customizable color schemes with multiple theme support
- 📝 **Typography**: Customizable text styles based on Material Design
- 📏 **Layout Utilities**: Pre-built spacing, padding, and border radius components

## Available Classes

#### Theme Extensions
- `{{class_name.pascalCase()}}Colors` - Customizable color palette for the application
- `{{class_name.pascalCase()}}FontWeight` - Predefined font weights (light, regular, medium, semiBold, bold)

#### Layout Components
- `{{class_name.pascalCase()}}VGap` - Vertical spacing utility (v0, v4, v8, v12, v16 up to v40)
- `{{class_name.pascalCase()}}HGap` - Horizontal spacing utility (v0, v4, v8, v12, v16 up to h40)
- `{{class_name.pascalCase()}}Padding` - Padding utility
  - Padding on all sides (all4, all8, all12, up to all40)
  - Horizontal padding only (horizontal4, horizontal8, horizontal12, up to horizontal40)
  - Vertical padding only (vertical4, vertical8, vertical12, up to vertical40)

#### Typography
- `{{class_name.pascalCase()}}Text` - Text styles utility
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

import 'package:{{class_name.snakeCase()}}/{{class_name.snakeCase()}}.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: {{class_name.pascalCase()}}FontFamily.roboto.name,
        extensions: [
          {{class_name.pascalCase()}}ThemeExtensions(
            colors: {{class_name.pascalCase()}}LightColors(),
          ),
        ],
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: {{class_name.pascalCase()}}FontFamily.roboto.name,
        extensions: [
          {{class_name.pascalCase()}}ThemeExtensions(
            colors: {{class_name.pascalCase()}}DarkColors(),
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
  // Use {{class_name.pascalCase()}}Padding to set the padding
  padding: const {{class_name.pascalCase()}}Padding.horizontal16(),
  child: Column(
    children: [
      // Use {{class_name.pascalCase()}}VGap to add vertical space
      const {{class_name.pascalCase()}}VGap.v12(),
      // Use {{class_name.pascalCase()}}Text to display text
      Container(
        // Use {{class_name.pascalCase()}}Padding to set the padding
        padding: const {{class_name.pascalCase()}}Padding.all8(),
        decoration: BoxDecoration(
          // Use context.customColors to set the color
          color: context.customColors.surface,
          // Use {{class_name.pascalCase()}}BorderRadius to set the border radius
          borderRadius: const {{class_name.pascalCase()}}BorderRadius.v8(),
          border: Border.all(
            color: context.customColors.primary,
          ),
        ),
        child: {{class_name.pascalCase()}}Text.bodyMedium(
          context,
          'A container with rounded corners',
          // Use {{class_name.pascalCase()}}FontWeight to set the font weight
          fontWeight: {{class_name.pascalCase()}}FontWeight.medium,
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
          // Use {{class_name.pascalCase()}}HGap to add horizontal space
          const {{class_name.pascalCase()}}HGap.v8(),
          // Use {{class_name.pascalCase()}}Text to display text
          {{class_name.pascalCase()}}Text.bodyMedium(context, 'Button'),
        ],
      ),
    ],
  ),
)
```
