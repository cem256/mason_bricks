import 'package:flutter/material.dart';
import 'package:base_template/app/constants/string_constants.dart';
import 'package:base_template/app/l10n/cubit/l10n_cubit.dart';
import 'package:base_template/app/l10n/generated/strings.g.dart';
import 'package:base_template/app/router/app_router.dart';
import 'package:base_template/app/router/custom_route_observer.dart';
import 'package:base_template/app/theme/cubit/theme_cubit.dart';
import 'package:base_template/app/theme/dark/dark_theme.dart';
import 'package:base_template/app/theme/light/light_theme.dart';
import 'package:base_template/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(
            cacheClient: Locator.cacheClient,
          )..init(),
        ),
        BlocProvider(
          create: (context) => L10nCubit(
            cacheClient: Locator.cacheClient,
          )..init(),
        ),
      ],
      child: BlocBuilder<L10nCubit, L10nState>(
        builder: (context, l10nState) {
          return BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
              return MaterialApp.router(
                // App Name
                title: StringConstants.appName,
                debugShowCheckedModeBanner: false,

                // Theme
                themeMode: themeState.themeMode,
                theme: LightTheme().theme,
                darkTheme: DarkTheme().theme,

                // Localization
                locale: l10nState.locale?.flutterLocale,
                supportedLocales: AppLocaleUtils.supportedLocales,
                localizationsDelegates: GlobalMaterialLocalizations.delegates,

                // Routing
                routerConfig: _appRouter.config(
                  navigatorObservers: () => [CustomRouteObserver()],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
