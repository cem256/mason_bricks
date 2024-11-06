import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress("Running 'flutter create --template=package'");

  try {
    await _createFlutterApp(context);
    progress.complete("Flutter package created!");
  } catch (e) {
    progress.fail("Something went wrong while creating the Flutter package : $e");
  }
}

Future<ProcessResult> _createFlutterApp(HookContext context) async {
  return Process.run(
    "flutter",
    [
      "create",
      "--template=package",
      "ui_kit",
    ],
  );
}
