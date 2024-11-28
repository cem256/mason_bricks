import 'dart:async';

import 'package:base_template/app/bloc/app_bloc_observer.dart';
import 'package:base_template/app/environment/app_environment.dart';
import 'package:base_template/app/l10n/generated/strings.g.dart';
import 'package:base_template/core/utils/device_info/device_info_utils.dart';
import 'package:base_template/core/utils/logger/logger_utils.dart';
import 'package:base_template/core/utils/package_info/package_info_utils.dart';
import 'package:base_template/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      final sharedPreferences = await SharedPreferences.getInstance();
      // Initialize Locator and Utils
      await Future.wait([
        Locator.locateServices(environment: environment, sharedPreferences: sharedPreferences),
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
