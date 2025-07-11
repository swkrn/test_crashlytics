# test_crashlytics

```shell
flutter clean && flutter pub get
```

## Production

### build
```shell
flutter build apk --obfuscate --split-debug-info=android_symbols/production --release --flavor production
```
### install
```shell
adb install build/app/outputs/flutter-apk/app-production-release.apk
```

### upload symbols
```shell
firebase crashlytics:symbols:upload --app=1:39503001139:android:066f15e0ab7fd1ec419546 android_symbols/production
```

## Staging

### build
```shell
flutter build apk --obfuscate --split-debug-info=android_symbols/staging --release --flavor staging
```

### install
```shell
adb install build/app/outputs/flutter-apk/app-staging-release.apk
```

### upload symbols
```shell
firebase crashlytics:symbols:upload --app=1:39503001139:android:4db0a3142e82fe97419546 android_symbols/staging
```
