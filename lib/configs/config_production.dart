import 'package:firebase_core/firebase_core.dart';
import 'package:test_crashlytics/configs/configs.dart';
import 'package:test_crashlytics/configs/firebase_options/firebase_options_production.dart' as production_firebase_options;

class ConfigProduction extends Config {
  @override
  FirebaseOptions get firebaseOptions =>  production_firebase_options.DefaultFirebaseOptions.currentPlatform;
}