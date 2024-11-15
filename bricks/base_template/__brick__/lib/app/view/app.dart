import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/app/constants/string_constants.dart';
import 'package:{{project_name.snakeCase()}}/app/l10n/generated/strings.g.dart';
import 'package:{{project_name.snakeCase()}}/app/router/app_router.dart';
import 'package:{{project_name.snakeCase()}}/app/router/custom_route_observer.dart';
import 'package:{{project_name.snakeCase()}}/app/theme/dark/dark_theme.dart';
import 'package:{{project_name.snakeCase()}}/app/theme/light/light_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // App Name
      title: StringConstants.appName,

      // Theme
      theme: LightTheme().theme,
      darkTheme: DarkTheme().theme,

      // Localization
      locale: AppLocale.en.flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,

      // Routing
      routerConfig: _appRouter.config(
        navigatorObservers: () => [CustomRouteObserver()],
      ),
    );
  }
}
