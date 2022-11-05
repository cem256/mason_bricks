# Clean Layers

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick that generates data, domain and presentation layers for clean architecture.

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
📦__brick__
 ┣ 📂data
 ┃ ┣ 📂data_sources
 ┃ ┃ ┣ 📂local
 ┃ ┃ ┗ 📂remote
 ┃ ┣ 📂model
 ┃ ┗ 📂repositories
 ┣ 📂domain
 ┃ ┣ 📂entities
 ┃ ┣ 📂repositories
 ┃ ┗ 📂use_cases
 ┗ 📂presentation
 ┃ ┣ 📂bloc
 ┃ ┣ 📂view
 ┃ ┗ 📂widgets

```

