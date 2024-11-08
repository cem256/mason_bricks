import 'package:base_template/app/environment/development_environment.dart';
import 'package:base_template/app/view/app.dart';
import 'package:base_template/bootstrap.dart';

Future<void> main() async {
  await bootstrap(builder: App.new, environment: DevelopmentEnvironment());
}
