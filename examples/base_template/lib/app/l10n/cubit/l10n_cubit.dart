import 'dart:async';

import 'package:base_template/app/base/base_cubit.dart';
import 'package:base_template/app/l10n/generated/strings.g.dart';
import 'package:base_template/core/clients/cache/cache_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'l10n_state.dart';
part 'l10n_cubit.freezed.dart';

class L10nCubit extends BaseCubit<L10nState> {
  L10nCubit({
    required CacheClient cacheClient,
  })  : _cacheClient = cacheClient,
        super(const L10nState());

  final CacheClient _cacheClient;

  Future<void> init() async {
    final cachedLocale = _cacheClient.getString(CacheKey.locale);
    // First time app launch or user has not set a locale yet
    if (cachedLocale == null) {
      final deviceLocale = await LocaleSettings.useDeviceLocale();
      emit(state.copyWith(locale: deviceLocale));
      // User has set a locale before
    } else {
      final locale = AppLocale.values.firstWhere((e) => e.languageCode == cachedLocale);
      await LocaleSettings.setLocale(locale);
      emit(state.copyWith(locale: locale));
    }
  }

  Future<void> setLocale(AppLocale locale) async {
    await LocaleSettings.setLocale(locale);
    await _cacheClient.setString(CacheKey.locale, locale.languageCode);
    emit(state.copyWith(locale: locale));
  }
}
