import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final List<String> foldersToRemove = [
    "ui_kit/lib/",
    "ui_kit/test/",
    "ui_kit/pubspec.yaml",
    "ui_kit/analysis_options.yaml",
    "ui_kit/README.md",
  ];

  final List<Map<String, String>> filesToCopy = [
    {"source": "lib", "destination": "ui_kit/"},
    {"source": "scripts", "destination": "ui_kit/"},
    {"source": "pubspec.yaml", "destination": "ui_kit/"},
    {"source": "analysis_options.yaml", "destination": "ui_kit/"},
    {"source": "README.md", "destination": "ui_kit/"},
  ];

  await _copyFiles(context, foldersToRemove, filesToCopy);
  await _runFlutterPubGet(context);
}

Future<void> _copyFiles(
    HookContext context, List<String> foldersToRemove, List<Map<String, String>> filesToCopy) async {
  final copyFileProgress = context.logger.progress("Copying required files");

  for (String folder in foldersToRemove) {
    await Process.run("rm", ["-rf", folder]);
  }

  List<Future<ProcessResult>> copyFutures = [];
  for (var fileMap in filesToCopy) {
    copyFutures.add(Process.run("mv", [fileMap["source"]!, fileMap["destination"]!]));
  }

  final result = await Future.wait<ProcessResult>(copyFutures);

  if (result.every((element) => element.exitCode == 0)) {
    copyFileProgress.complete("Files copied successfully!");
  } else {
    copyFileProgress.fail(result.firstWhere((element) => element.exitCode != 0).stderr.toString());
  }
}

Future<void> _runFlutterPubGet(HookContext context) async {
  final flutterPubGetProgress = context.logger.progress("Running pub get script");
  final result = await Process.start("sh", ["scripts/pub_get.sh"], workingDirectory: "./ui_kit");

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    flutterPubGetProgress.complete("Pub get script successfully executed!");
  } else {
    flutterPubGetProgress.complete("An error occurred on pub get script ${result.stderr.toString()}");
    exit(exitCode);
  }
}
