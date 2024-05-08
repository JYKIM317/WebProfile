import 'package:firebase_analytics/firebase_analytics.dart';

class Analytics {
  Future<void> sendLogEvent({
    required String logName,
  }) async {
    await FirebaseAnalytics.instance.logEvent(name: logName);
  }
}
