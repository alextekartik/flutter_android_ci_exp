import 'dart:io';

import 'package:path/path.dart';
import 'package:process_run/shell.dart';

var workDir = join('.local', 'hello_world');

Future<void> main() async {
  await createAndroidProject();
}

Future<void> createAndroidProject() async {
  try {
    await Directory(workDir).delete(recursive: true);
  } catch (_) {}
  await Directory(workDir).parent.create(recursive: true);

  await run(
      'flutter create --template app --platforms android ${shellArgument(workDir)}');
}
