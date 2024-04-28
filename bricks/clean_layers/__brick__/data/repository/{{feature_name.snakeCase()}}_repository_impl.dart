import '../data_source/remote/{{feature_name.snakeCase()}}_remote_data_source.dart';
import '../../domain/repository/{{feature_name.snakeCase()}}_repository.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository  {
  {{feature_name.pascalCase()}}RepositoryImpl({required {{feature_name.pascalCase()}}RemoteDataSource {{feature_name.camelCase()}}RemoteDataSource})
    : _{{feature_name.camelCase()}}RemoteDataSource = {{feature_name.camelCase()}}RemoteDataSource;

  final {{feature_name.pascalCase()}}RemoteDataSource _{{feature_name.camelCase()}}RemoteDataSource;

  @override
  Future<void> {{method_name.camelCase()}}() async {
    await _{{feature_name.camelCase()}}RemoteDataSource.{{method_name}}();
  }
}
