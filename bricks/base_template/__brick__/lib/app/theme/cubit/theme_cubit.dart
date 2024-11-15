import 'package:{{project_name.snakeCase()}}/app/base/base_cubit.dart';
import 'package:{{project_name.snakeCase()}}/core/clients/cache/cache_client.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_cubit.freezed.dart';
part 'theme_state.dart';

class ThemeCubit extends BaseCubit<ThemeState> {
  ThemeCubit({
    required CacheClient cacheClient,
  })  : _cacheClient = cacheClient,
        super(const ThemeState());

  final CacheClient _cacheClient;

  Future<void> init() async {
    final themeMode = _cacheClient.getString(CacheKey.themeMode);
    emit(state.copyWith(themeMode: ThemeMode.values.firstWhere((e) => e.name == themeMode)));
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    await _cacheClient.setString(CacheKey.themeMode, themeMode.name);
    emit(state.copyWith(themeMode: themeMode));
  }
}
