import 'package:path/path.dart';
import 'package:process_run/shell.dart';

import 'create_android_project.dart';

Future<void> main() async {
  await runAndroidTest();
}

Future<void> runAndroidTest() async {
  var shell = Shell(workingDirectory: join(workDir, 'android'));
  await shell.run('./gradlew test');
}
