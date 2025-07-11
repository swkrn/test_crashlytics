import 'package:firebase_core/firebase_core.dart';
import 'package:test_crashlytics/configs/configs.dart';
import 'package:test_crashlytics/configs/firebase_options/firebase_options_staging.dart' as staging_firebase_options;

class ConfigStaging extends Config {
  @override
  FirebaseOptions get firebaseOptions =>  staging_firebase_options.DefaultFirebaseOptions.currentPlatform;
}