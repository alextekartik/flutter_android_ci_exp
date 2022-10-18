import 'package:process_run/shell.dart';

import 'create_android_project.dart';

Future<void> main() async {
  await buildApk();
}

Future<void> buildApk() async {
  var shell = Shell(workingDirectory: workDir);
  await shell.run('flutter build apk');
}
