import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/use_cases/{{method_name.snakeCase()}}_use_case.dart';

part '{{feature_name.snakeCase()}}_state.dart';


class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit({required {{method_name.pascalCase()}}UseCase  {{method_name.camelCase()}}UseCase})
      : _{{method_name.camelCase()}}UseCase = {{method_name.camelCase()}}UseCase,
        super(const {{feature_name.pascalCase()}}State());

  final {{method_name.pascalCase()}}UseCase _{{method_name.camelCase()}}UseCase;

  Future<void> signInWithEmailAndPassword() async {
    await _{{method_name.camelCase()}}UseCase.call();
  }
}
