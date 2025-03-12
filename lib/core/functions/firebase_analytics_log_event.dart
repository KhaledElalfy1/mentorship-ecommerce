

import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';

Future<void> firebaseAnalyticsLogEvent({
  required FirebaseAnalyticsEventModel firebaseAnalyticsEventModel,
})async {
  log('Firebase Analytics Event: ${firebaseAnalyticsEventModel.name}');
 await FirebaseAnalytics.instance.logEvent(
    name: firebaseAnalyticsEventModel.name,
    parameters: firebaseAnalyticsEventModel.parameters,
  );
}
