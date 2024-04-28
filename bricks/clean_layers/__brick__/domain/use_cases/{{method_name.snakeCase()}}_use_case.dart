import '../repository/{{feature_name.snakeCase()}}_repository.dart';

class {{method_name.pascalCase()}}UseCase{
  const {{method_name.pascalCase()}}UseCase({required {{feature_name.pascalCase()}}Repository {{feature_name.camelCase()}}Repository})
    :  _{{feature_name.camelCase()}}Repository = {{feature_name.camelCase()}}Repository;

  final {{feature_name.pascalCase()}}Repository _{{feature_name.camelCase()}}Repository;

    Future<void> call() {
    return _{{feature_name.camelCase()}}Repository.{{method_name.camelCase()}}();
  }
}
