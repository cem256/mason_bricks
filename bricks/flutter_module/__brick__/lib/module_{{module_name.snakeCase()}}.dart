///
library module_{{module_name.snakeCase()}}; 

import 'package:auto_route/auto_route.dart';

export 'module_{{module_name.snakeCase()}}.gr.dart';

@AutoRouterConfig()
class Module{{module_name.pascalCase()}}Router extends RootStackRouter{
  @override
  List<AutoRoute> get routes => [];
}
