import 'dart:async';

import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/app/bloc/app_bloc_observer.dart';
import 'package:{{project_name.snakeCase()}}/app/environment/app_environment.dart';
import 'package:{{project_name.snakeCase()}}/app/l10n/generated/strings.g.dart';
import 'package:{{project_name.snakeCase()}}/core/utils/device_info/device_info_utils.dart';
import 'package:{{project_name.snakeCase()}}/core/utils/logger/logger_utils.dart';
import 'package:{{project_name.snakeCase()}}/core/utils/package_info/package_info_utils.dart';
import 'package:{{project_name.snakeCase()}}/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> bootstrap({required FutureOr<Widget> Function() builder, required AppEnvironment environment}) async {
  FlutterError.onError = (details) {
    LoggerUtils.instance.logFatalError(details.exceptionAsString(), details.stack);
  };
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      // Initialize Bloc Observer
      Bloc.observer = AppBlocObserver(
        logEvents: false,
        logTransitions: false,
      );
      // Initialize Locator and Utils
      await Future.wait([
        Locator.locateServices(environment: environment),
        PackageInfoUtils.init(),
        DeviceInfoUtils.init(),
      ]);

      runApp(
        TranslationProvider(
          child: await builder(),
        ),
      );
    },
    (error, stackTrace) {
      LoggerUtils.instance.logFatalError(error.toString(), stackTrace);
    },
  );
}
