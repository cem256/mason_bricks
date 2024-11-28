import 'package:{{project_name.snakeCase()}}/app/environment/app_environment.dart';
import 'package:{{project_name.snakeCase()}}/core/clients/cache/cache_client.dart';
import 'package:{{project_name.snakeCase()}}/core/clients/network/network_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// [Locator] is responsible for locating and registering all the
/// services of the application.
abstract final class Locator {
  /// [GetIt] instance
  @visibleForTesting
  static final instance = GetIt.instance;

  /// Returns instance of [NetworkClient]
  static NetworkClient get networkClient => instance<NetworkClient>();

  /// Returns instance of [CacheClient]
  static CacheClient get cacheClient => instance<CacheClient>();

  /// Responsible for registering all the dependencies
  static Future<void> locateServices({
    required AppEnvironment environment,
    required SharedPreferences sharedPreferences,
  }) async {
    instance
      // Clients
      ..registerLazySingleton(() => NetworkClient(dio: instance(), baseUrl: environment.baseUrl))
      ..registerLazySingleton(() => CacheClient(sharedPreferences: sharedPreferences))
      // Client Dependencies
      ..registerFactory(Dio.new);
  }
}
