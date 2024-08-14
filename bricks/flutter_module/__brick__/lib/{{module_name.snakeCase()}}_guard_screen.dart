import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class {{module_name.pascalCase()}}GuardScreen extends StatelessWidget {
  const {{module_name.pascalCase()}}GuardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
