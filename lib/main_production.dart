

import 'package:flutter/material.dart';
import 'package:mentorship_ecommerce/core/functions/init_firebase_and_analytics.dart';
import 'ecommerce_app.dart';
import 'firebase_options_prod.dart';
import 'package:mentorship_ecommerce/core/services/prefs.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFirebaseAndAnalytics(
    options: DefaultFirebaseOptions.currentPlatform,
    isAnalyticsEnabled: true,
  );
  await Prefs.init();
  runApp(const EcommerceApp());
}
