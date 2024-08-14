import 'strings.g.dart';

extension FlutterModuleInheritedTranslationsExtension on FlutterModuleInheritedTranslations {
  FlutterModuleInheritedTranslations get tr => LocaleSettings.instance.translationMap[AppLocale.tr]!;
  FlutterModuleInheritedTranslations get en => LocaleSettings.instance.translationMap[AppLocale.en]!;
}
