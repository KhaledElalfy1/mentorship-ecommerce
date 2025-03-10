

import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:mentorship_ecommerce/core/models/firebase_analytics_event_model.dart';

void firebaseAnalyticsLogEvent({
  required FirebaseAnalyticsEventModel firebaseAnalyticsEventModel,
}) {
  log('Firebase Analytics Event: ${firebaseAnalyticsEventModel.name}');
  FirebaseAnalytics.instance.logEvent(
    name: firebaseAnalyticsEventModel.name,
    parameters: firebaseAnalyticsEventModel.parameters,
  );
}
