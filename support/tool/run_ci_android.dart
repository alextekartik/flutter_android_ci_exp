import 'build_apk.dart';
import 'create_android_project.dart';
import 'run_android_test.dart';

Future main() async {
  await createAndroidProject();
  await buildApk();
  await runAndroidTest();
}
