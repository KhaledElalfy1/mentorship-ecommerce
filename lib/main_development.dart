import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/functions/init_firebase_and_analytics.dart';
import 'firebase_options_dev.dart';
import 'ecommerce_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFirebaseAndAnalytics(
    options: DefaultFirebaseOptions.currentPlatform,
    isAnalyticsEnabled: false,
  );

  runApp(DevicePreview(builder: (context) {
    return const EcommerceApp();
  }));
}
