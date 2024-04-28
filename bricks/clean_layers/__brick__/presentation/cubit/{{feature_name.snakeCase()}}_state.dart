part of '{{feature_name.snakeCase()}}_cubit.dart';

enum {{feature_name.pascalCase()}}Status { initial, loading, success, failure }

class {{feature_name.pascalCase()}}State {
  const {{feature_name.pascalCase()}}State({this.status = {{feature_name.pascalCase()}}Status.initial});

  final {{feature_name.pascalCase()}}Status status;

}

