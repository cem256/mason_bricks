import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  String className = context.vars["class_name"];
  className = className.snakeCase;

  final progress = context.logger.progress("Running 'flutter create --template=package $className'");

  try {
    await _createFlutterPackage(context, className);
    progress.complete("Flutter package $className created!");
  } catch (e) {
    progress.fail("Something went wrong while creating the Flutter package $className : $e");
  }
}

Future<ProcessResult> _createFlutterPackage(HookContext context, String className) async {
  return Process.run(
    "flutter",
    [
      "create",
      "--template=package",
      className,
    ],
  );
}
