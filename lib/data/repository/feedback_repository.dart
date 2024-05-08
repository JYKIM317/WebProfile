import 'package:webprofile/data/remote/feedback_remote.dart';
import 'package:webprofile/data/model/feedback/feedback.dart';
import 'dart:math';

class FeedbackRepository {
  sendFeedback({required Feedback feedback}) async {
    String collectionName = 'feedback';
    String documentName = '${DateTime.now()}_${Random().nextInt(2147483648)}';
    Map<String, dynamic> json = feedback.toJson();

    FeedbackRemote().setDocument(
      collectionName: collectionName,
      documentName: documentName,
      json: json,
    );
  }
}
