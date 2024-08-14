import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress("Running 'flutter create -t package'");

  try {
    await _createFlutterPackage(context);
    progress.complete("Flutter package created!");
  } catch (e) {
    progress.fail("Something went wrong while running 'flutter create -t package' : $e");
  }
}

Future<ProcessResult> _createFlutterPackage(HookContext context) async {
  String moduleName = context.vars["module_name"];
  moduleName = moduleName.snakeCase;

  return Process.run(
    "flutter",
    [
      "create",
      "-t",
      "package",
      moduleName,
    ],
  );
}
