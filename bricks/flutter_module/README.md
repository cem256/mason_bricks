# Flutter Module

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick that generates a new Flutter module(package) with the given name.

## Variables ✨

| Variable       | Description             | Default        | Type     |
| -------------- | ----------------------- | -------------- | -------- |
| `module_name`  | Name of the module      | Example        | `string` |

## How to use 🚀

Make sure you have the [mason_cli](https://github.com/felangel/mason/tree/master/packages/mason_cli) installed.
```sh
dart pub global activate mason_cli
```

First go to the mason_bricks folder on your local machine. Then, add freezed_model to your library.
```sh
mason add -g flutter_module --path bricks/flutter_module
```

Generate your brick
```sh
mason make flutter_module
```

## Output 📦

```
📦lib
 ┣ 📂core
 ┃ ┣ 📂i18n
 ┃ ┃ ┣ 📜i18n.dart
 ┃ ┃ ┣ 📜inherited_translations_extension.dart
 ┃ ┃ ┣ 📜strings.g.dart
 ┃ ┃ ┣ 📜strings.i18n.json
 ┃ ┃ ┗ 📜strings_tr.i18n.json
 ┃ ┗ 📜core.dart
 ┣ 📜flutter_module_guard_screen.dart
 ┣ 📜module_flutter_module.dart
 ┗ 📜module_flutter_module.gr.dart
```

