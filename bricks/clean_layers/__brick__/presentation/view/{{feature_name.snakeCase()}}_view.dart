import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/{{feature_name.snakeCase()}}_cubit.dart';

class {{feature_name.pascalCase()}}View extends StatelessWidget {
  const {{feature_name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('{{feature_name.camelCase()}}'),
      ),
      body: BlocProvider(
        create: (context) => {{feature_name.pascalCase()}}Cubit(),
        child: const _{{feature_name.pascalCase()}}Body(),
      ),
    );
  }
}

class _{{feature_name.pascalCase()}}Body extends StatelessWidget {
  const _{{feature_name.pascalCase()}}Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
