import 'package:auto_route/auto_route.dart';
import 'package:{{project_name.snakeCase()}}/app/constants/asset_constants.dart';
import 'package:{{project_name.snakeCase()}}/app/l10n/cubit/l10n_cubit.dart';
import 'package:{{project_name.snakeCase()}}/app/l10n/extensions/l10n_extensions.dart';
import 'package:{{project_name.snakeCase()}}/app/l10n/generated/strings.g.dart';
import 'package:{{project_name.snakeCase()}}/app/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Padding(
        padding: const UIKitPadding.all16(),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Image.asset(AssetConstants.flutterIcon)]),
      ),
    );
  }
}

class _HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: UIKitText.titleLarge(context, context.l10n.hello),
      actions: [
        BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, themeState) {
            return Switch(
              value: themeState.themeMode == ThemeMode.dark,
              onChanged: (value) => context.read<ThemeCubit>().setThemeMode(value ? ThemeMode.dark : ThemeMode.light),
            );
          },
        ),
        const UIKitHGap.v16(),
        BlocBuilder<L10nCubit, L10nState>(
          builder: (context, state) {
            return DropdownButton<AppLocale>(
              value: state.locale,
              items: AppLocale.values
                  .map((e) => DropdownMenuItem<AppLocale>(value: e, child: Text(e.name.toUpperCase())))
                  .toList(),
              onChanged: (value) => context.read<L10nCubit>().setLocale(value!),
            );
          },
        ),
        const UIKitHGap.v8(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
