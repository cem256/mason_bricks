import 'package:flutter/material.dart';
import 'package:base_template/app/constants/string_constants.dart';
import 'package:base_template/app/l10n/generated/strings.g.dart';
import 'package:base_template/app/router/app_router.dart';
import 'package:base_template/app/router/custom_route_observer.dart';
import 'package:base_template/app/theme/dark/dark_theme.dart';
import 'package:base_template/app/theme/light/light_theme.dart';
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
