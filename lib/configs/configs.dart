import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:test_crashlytics/configs/config_production.dart';

import 'config_staging.dart';

enum Flavor {
  staging,
  production,
}


class Configs {
  static Flavor get flavor {
    switch (appFlavor?.toLowerCase()) {
      case 'staging':
        return Flavor.staging;
      case 'production':
        return Flavor.production;
      default:
        return Flavor.staging;
    }
  }

  static Config get config {
    switch (flavor) {
      case Flavor.production:
        return ConfigProduction();
      case Flavor.staging:
        return ConfigStaging();
    }
  }
}

abstract class Config {
  FirebaseOptions get firebaseOptions;
}