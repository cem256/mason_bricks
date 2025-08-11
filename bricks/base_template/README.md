# Base Template

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick that generates a new Flutter project for you with support for a HTTP client, themes, routing, localization, and dependency injection.

## Compatibility

Tested on Flutter 3.27.3

## Brick Uses:
- A customizable uikit package that helps you build consistent user interfaces with predefined components and layout utilities.
- [dio](https://pub.dev/packages/dio) as an HTTP client
- [auto_route](https://pub.dev/packages/auto_route) for routing
- [get_it](https://pub.dev/packages/get_it) for dependency injection
- [logger](https://pub.dev/packages/logger) as logging utility
- [envied](https://pub.dev/packages/envied) for secure handling of environment variables
- [freezed](https://pub.dev/packages/freezed) for generating immutable data classes
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) for state management
- [slang](https://pub.dev/packages/slang) for localization
- [very_good_analysis](https://pub.dev/packages/very_good_analysis) for lint rules

## Project Structure

- "app" folder holds files specific to this particular application.
- "core" folder contains application-agnostic code that can be reused in other projects.
- "feature" folder represents the app's feature set.

## How to use 🚀

Make sure you have the [mason_cli](https://github.com/felangel/mason/tree/master/packages/mason_cli) installed.

```sh
dart pub global activate mason_cli
```

First go to the mason_bricks folder on your local machine. Then, add base_template to your library.

```sh
mason add -g base_template --path bricks/base_template
```

Generate your brick

```sh
mason make base_template
```

## Warning ⚠️

Ensure the environment/ folder is included in your .gitignore to protect sensitive configuration

## Variables ✨

| Variable       | Description                 | Default                | Type     |
| -------------- | --------------------------- | ---------------------- | -------- |
| `project_name` | Project Name                | Starter Template       | `string` |
| `description`  | Project description         | A new Flutter project. | `string` |
| `organization` | Organization of the project | com.example            | `string` |

## Output 📦

```
📦lib
 ┣ 📂app
 ┃ ┣ 📂base
 ┃ ┃ ┣ 📜base_bloc.dart
 ┃ ┃ ┗ 📜base_cubit.dart
 ┃ ┣ 📂bloc
 ┃ ┃ ┗ 📜app_bloc_observer.dart
 ┃ ┣ 📂constants
 ┃ ┃ ┗ 📜string_constants.dart
 ┃ ┣ 📂environment
 ┃ ┃ ┣ 📜app_environment.dart
 ┃ ┃ ┣ 📜development_environment.dart
 ┃ ┃ ┣ 📜development_environment.g.dart
 ┃ ┃ ┣ 📜production_environment.dart
 ┃ ┃ ┗ 📜production_environment.g.dart
 ┃ ┣ 📂l10n
 ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┣ 📜l10n_cubit.dart
 ┃ ┃ ┃ ┣ 📜l10n_cubit.freezed.dart
 ┃ ┃ ┃ ┗ 📜l10n_state.dart
 ┃ ┃ ┣ 📂extensions
 ┃ ┃ ┃ ┗ 📜l10n_extensions.dart
 ┃ ┃ ┣ 📂generated
 ┃ ┃ ┃ ┣ 📜strings.g.dart
 ┃ ┃ ┃ ┣ 📜strings_en.g.dart
 ┃ ┃ ┃ ┗ 📜strings_tr.g.dart
 ┃ ┃ ┗ 📂json
 ┃ ┃ ┃ ┣ 📜strings.l10n.json
 ┃ ┃ ┃ ┗ 📜strings_tr.l10n.json
 ┃ ┣ 📂router
 ┃ ┃ ┣ 📜app_router.dart
 ┃ ┃ ┣ 📜app_router.gr.dart
 ┃ ┃ ┗ 📜custom_route_observer.dart
 ┃ ┣ 📂theme
 ┃ ┃ ┣ 📂base
 ┃ ┃ ┃ ┗ 📜base_theme.dart
 ┃ ┃ ┣ 📂cubit
 ┃ ┃ ┃ ┣ 📜theme_cubit.dart
 ┃ ┃ ┃ ┣ 📜theme_cubit.freezed.dart
 ┃ ┃ ┃ ┗ 📜theme_state.dart
 ┃ ┃ ┣ 📂dark
 ┃ ┃ ┃ ┗ 📜dark_theme.dart
 ┃ ┃ ┗ 📂light
 ┃ ┃ ┃ ┗ 📜light_theme.dart
 ┃ ┗ 📂view
 ┃ ┃ ┗ 📜app.dart
 ┣ 📂core
 ┃ ┣ 📂clients
 ┃ ┃ ┣ 📂cache
 ┃ ┃ ┃ ┗ 📜cache_client.dart
 ┃ ┃ ┗ 📂network
 ┃ ┃ ┃ ┗ 📜network_client.dart
 ┃ ┣ 📂extensions
 ┃ ┃ ┗ 📜context_extensions.dart
 ┃ ┗ 📂utils
 ┃ ┃ ┣ 📂device_info
 ┃ ┃ ┃ ┗ 📜device_info_utils.dart
 ┃ ┃ ┣ 📂logger
 ┃ ┃ ┃ ┗ 📜logger_utils.dart
 ┃ ┃ ┗ 📂package_info
 ┃ ┃ ┃ ┗ 📜package_info_utils.dart
 ┣ 📂feature
 ┃ ┗ 📂home
 ┃ ┃ ┣ 📂model
 ┃ ┃ ┃ ┗ 📜.gitkeep
 ┃ ┃ ┣ 📂view
 ┃ ┃ ┃ ┗ 📜home_view.dart
 ┃ ┃ ┗ 📂view_model
 ┃ ┃ ┃ ┗ 📜.gitkeep
 ┣ 📜bootstrap.dart
 ┣ 📜locator.dart
 ┣ 📜main_development.dart
 ┗ 📜main_production.dart
```
