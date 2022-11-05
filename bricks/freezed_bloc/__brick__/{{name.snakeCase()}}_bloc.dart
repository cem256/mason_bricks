import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';
part '{{name.snakeCase()}}_bloc.freezed.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc() : super(const _InitialState()) {
    //TODO: Define event handlers
    on<_Initialized>(_onInitialized);
  }
  //TODO: Implement event handlers
  void _onInitialized(_Initialized event, Emitter<{{name.pascalCase()}}State> emit) {}
}
