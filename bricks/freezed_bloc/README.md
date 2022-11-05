# Freezed Bloc

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick that generates a [bloc](https://pub.dev/packages/flutter_bloc) with [freezed](https://pub.dev/packages/freezed) support.

## Variables ✨

| Variable       | Description             | Default | Type     |
| -------------- | ----------------------- | ------- | -------- |
| `name`         | Name of the bloc        | Counter | `string` |

## How to use 🚀

Make sure you have the [mason_cli](https://github.com/felangel/mason/tree/master/packages/mason_cli) installed.
```sh
dart pub global activate mason_cli
```

First go to the mason_bricks folder on your local machine. Then, add freezed_bloc to your library.
```sh
mason add -g freezed_bloc --path bricks/freezed_bloc
```

Generate your brick
```sh
mason make freezed_bloc
```

## Output 📦

```
📦__brick__
 ┣ 📜counter_bloc.dart
 ┣ 📜counter_event.dart
 ┗ 📜counter_state.dart

```