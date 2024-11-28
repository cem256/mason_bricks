import 'package:shared_preferences/shared_preferences.dart';

enum CacheKey {
  themeMode,
  locale,
}

final class CacheClient {
  CacheClient({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  String? getString(CacheKey key) {
    return _sharedPreferences.getString(key.name);
  }

  Future<void> setString(CacheKey key, String value) async {
    await _sharedPreferences.setString(key.name, value);
  }

  Future<void> setBool(CacheKey key, {required bool value}) async {
    await _sharedPreferences.setBool(key.name, value);
  }

  bool getBool(CacheKey key) {
    return _sharedPreferences.getBool(key.name) ?? false;
  }

  Future<void> remove(CacheKey key) async {
    await _sharedPreferences.remove(key.name);
  }

  Future<void> clear() async {
    await _sharedPreferences.clear();
  }
}
