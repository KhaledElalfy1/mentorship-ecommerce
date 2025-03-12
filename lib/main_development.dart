import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'firebase_options_dev.dart';
import 'ecommerce_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  runApp(DevicePreview(builder: (context) {
    return const EcommerceApp();
  }));
}
