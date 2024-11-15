import 'package:auto_route/auto_route.dart';
import 'package:{{project_name.snakeCase()}}/app/l10n/extensions/app_l10n_extensions.dart';
import 'package:{{project_name.snakeCase()}}/app/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        actions: [
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
              return Switch(
                value: themeState.themeMode == ThemeMode.dark,
                onChanged: (value) => context.read<ThemeCubit>().setThemeMode(
                      value ? ThemeMode.dark : ThemeMode.light,
                    ),
              );
            },
          ),
        ],
      ),
    );
  }
}
