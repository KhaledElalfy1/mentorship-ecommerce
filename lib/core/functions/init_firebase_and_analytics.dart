import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> initFirebaseAndAnalytics(
    {required FirebaseOptions options,
    required bool isAnalyticsEnabled}) async {
  await Firebase.initializeApp(
    options: options,
  );
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  await analytics.setAnalyticsCollectionEnabled(isAnalyticsEnabled);
}
