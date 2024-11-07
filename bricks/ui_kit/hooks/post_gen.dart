import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  String className = context.vars["class_name"];
  className = className.snakeCase;

  final List<String> foldersToRemove = [
    "$className/lib/",
    "$className/test/",
    "$className/pubspec.yaml",
    "$className/analysis_options.yaml",
    "$className/README.md",
    "$className/CHANGELOG.md",
  ];

  final List<Map<String, String>> filesToCopy = [
    {"source": "lib", "destination": "$className/"},
    {"source": "scripts", "destination": "$className/"},
    {"source": "pubspec.yaml", "destination": "$className/"},
    {"source": "analysis_options.yaml", "destination": "$className/"},
    {"source": "README.md", "destination": "$className/"},
    {"source": "CHANGELOG.md", "destination": "$className/"},
  ];

  await _copyFiles(context, foldersToRemove, filesToCopy);
  await _runFlutterPubGet(context, className);
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

Future<void> _runFlutterPubGet(HookContext context, String className) async {
  final flutterPubGetProgress = context.logger.progress("Running pub get script");
  final result = await Process.start("sh", ["scripts/pub_get.sh"], workingDirectory: className);

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    flutterPubGetProgress.complete("Pub get script successfully executed!");
  } else {
    flutterPubGetProgress.complete("An error occurred on pub get script ${result.stderr.toString()}");
    exit(exitCode);
  }
}
