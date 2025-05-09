import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/functions/init_firebase_and_analytics.dart';
import 'package:mentorship_ecommerce/core/services/prefs.dart';
import 'package:mentorship_ecommerce/core/services/service_locator.dart';
import 'firebase_options_dev.dart';
import 'ecommerce_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFirebaseAndAnalytics(
    options: DefaultFirebaseOptions.currentPlatform,
    isAnalyticsEnabled: false,
  );

  await Prefs.init();
  setup();
  runApp(DevicePreview(builder: (context) {
    return const EcommerceApp();
  }));
}
