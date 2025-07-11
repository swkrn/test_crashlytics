# test_crashlytics

```shell
flutter clean && flutter pub get
```

## Production

```shell
flutter build apk --obfuscate --split-debug-info=android_symbols/production --release --flavor production
```

```shell
firebase crashlytics:symbols:upload --app=1:39503001139:android:066f15e0ab7fd1ec419546 android_symbols/production
```

## Staging

```shell
flutter build apk --obfuscate --split-debug-info=android_symbols/staging --release --flavor staging
```

```shell
firebase crashlytics:symbols:upload --app=1:39503001139:android:4db0a3142e82fe97419546 android_symbols/staging
```
