# Freezed Model

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick that generates a Dart data class with [freezed](https://pub.dev/packages/freezed).

## Variables ✨

| Variable       | Description             | Default        | Type     |
| -------------- | ----------------------- | -------------- | -------- |
| `name`         | Name of the model       | Counter Model  | `string` |

## How to use 🚀

Make sure you have the [mason_cli](https://github.com/felangel/mason/tree/master/packages/mason_cli) installed.
```sh
dart pub global activate mason_cli
```

First go to the mason_bricks folder on your local machine. Then, add freezed_model to your library.
```sh
mason add -g freezed_model --path bricks/freezed_model
```

Generate your brick
```sh
mason make freezed_model
```

## Output 📦

```
📦__freezed_model__
 ┗ 📜counter_model.dart

```

