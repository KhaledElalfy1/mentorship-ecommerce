import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:mentorship_ecommerce/core/routes/routes_exports.dart';

Future<void> initFirebaseAndAnalytics(
    {required FirebaseOptions options,
    required bool isAnalyticsEnabled}) async {
  await Firebase.initializeApp(
    options: options,
  );
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  await analytics.setAnalyticsCollectionEnabled(isAnalyticsEnabled);
     await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(isAnalyticsEnabled);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
}
