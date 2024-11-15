import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/app/l10n/extensions/app_l10n_extensions.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.l10n.flutter,
        ),
      ),
    );
  }
}
