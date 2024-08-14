import 'strings.g.dart';

extension {{module_name.pascalCase()}}InheritedTranslationsExtension on {{module_name.pascalCase()}}InheritedTranslations {
  {{module_name.pascalCase()}}InheritedTranslations get tr => LocaleSettings.instance.translationMap[AppLocale.tr]!;
  {{module_name.pascalCase()}}InheritedTranslations get en => LocaleSettings.instance.translationMap[AppLocale.en]!;
}
