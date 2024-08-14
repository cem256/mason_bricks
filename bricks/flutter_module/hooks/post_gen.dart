import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  String moduleName = context.vars["module_name"];
  moduleName = moduleName.snakeCase;

  final List<String> foldersToRemove = [
    "$moduleName/lib/",
    "$moduleName/test/",
    "$moduleName/pubspec.yaml",
    "$moduleName/analysis_options.yaml",
  ];

  final List<Map<String, String>> filesToCopy = [
    {"source": "lib", "destination": "$moduleName/"},
    {"source": "analysis_options.yaml", "destination": "$moduleName/"},
    {"source": "pubspec.yaml", "destination": "$moduleName/"},
    {"source": "slang.yaml", "destination": "$moduleName/"},
  ];

  await _copyFiles(context, moduleName, foldersToRemove, filesToCopy);
  await _runFlutterPubGet(context, moduleName);
  await _runBuildRunnerScript(context, moduleName);
  await _generateTranlations(context, moduleName);
}

Future<void> _copyFiles(
    HookContext context, String moduleName, List<String> foldersToRemove, List<Map<String, String>> filesToCopy) async {
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

Future<void> _runFlutterPubGet(HookContext context, String projectName) async {
  final flutterPubGetProgress = context.logger.progress("Running pub get script");
  final result = await Process.run("flutter", ["pub", "get"], workingDirectory: projectName);

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    flutterPubGetProgress.complete("Pub get script successfully executed!");
  } else {
    flutterPubGetProgress.complete("An error occurred on pub get script ${result.stderr.toString()}");
    exit(exitCode);
  }
}

Future<void> _runBuildRunnerScript(HookContext context, String projectName) async {
  final buildRunnerProgress = context.logger.progress("Running build runner script");
  final result = await Process.run("dart", ["pub", "run", "build_runner", "build", "--delete-conflicting-outputs"],
      workingDirectory: projectName);

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    buildRunnerProgress.complete("Build runner script successfully executed!");
  } else {
    buildRunnerProgress.complete("An error occurred on build runner script ${result.stderr.toString()}");
    exit(exitCode);
  }
}

Future<void> _generateTranlations(HookContext context, String projectName) async {
  final buildRunnerProgress = context.logger.progress("Generating translations");
  final result = await Process.run("dart", ["run", "slang"], workingDirectory: projectName);

  final exitCode = await result.exitCode;

  if (exitCode == 0) {
    buildRunnerProgress.complete("Translations generated successfully!");
  } else {
    buildRunnerProgress.complete("An error occurred on translations generation ${result.stderr.toString()}");
    exit(exitCode);
  }
}
