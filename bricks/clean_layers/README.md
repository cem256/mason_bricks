# Clean Layers

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick that generates data, domain and presentation layers for the given feature name and method name for clean architecture.

## How to use 🚀

Make sure you have the [mason_cli](https://github.com/felangel/mason/tree/master/packages/mason_cli) installed.
```sh
dart pub global activate mason_cli
```

First go to the mason_bricks folder on your local machine. Then, add clean_layers to your library.
```sh
mason add -g clean_layers --path bricks/clean_layers
```

Generate your brick
```sh
mason make clean_layers
```

## Output 📦

```
📦clean_layers
 ┣ 📂data
 ┃ ┣ 📂data_source
 ┃ ┃ ┗ 📂remote
 ┃ ┃ ┃ ┗ 📜login_remote_data_source.dart
 ┃ ┣ 📂model
 ┃ ┃ ┗ 📜.gitignore
 ┃ ┗ 📂repository
 ┃ ┃ ┗ 📜login_repository_impl.dart
 ┣ 📂domain
 ┃ ┣ 📂entities
 ┃ ┃ ┗ 📜.gitignore
 ┃ ┣ 📂repository
 ┃ ┃ ┗ 📜login_repository.dart
 ┃ ┗ 📂use_cases
 ┃ ┃ ┣ 📜.gitignore
 ┃ ┃ ┗ 📜login_with_email_and_password_use_case.dart
 ┗ 📂presentation
 ┃ ┣ 📂cubit
 ┃ ┃ ┣ 📜login_cubit.dart
 ┃ ┃ ┗ 📜login_state.dart
 ┃ ┗ 📂view
 ┃ ┃ ┗ 📜login_view.dart
```

