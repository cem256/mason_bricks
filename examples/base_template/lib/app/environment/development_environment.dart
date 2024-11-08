import 'package:envied/envied.dart';
import 'package:base_template/app/environment/app_environment.dart';

part 'development_environment.g.dart';

@Envied(obfuscate: true, path: AppEnvironment.developmentPath)
final class DevelopmentEnvironment implements AppEnvironment {
  DevelopmentEnvironment();

  @override
  @EnviedField(varName: 'BASE_URL')
  final String baseUrl = _DevelopmentEnvironment.baseUrl;
}
