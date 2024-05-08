import 'package:flutter/material.dart' as material;
import 'package:webprofile/data/model/feedback/feedback.dart';
import 'package:webprofile/data/repository/feedback_repository.dart';

class StarRatesViewModel extends material.ChangeNotifier {
  Feedback _feedback = Feedback(
    starRates: 0,
    feedback: '',
  );

  Feedback get feedback => _feedback;

  void setStarRates({required int rate}) {
    Feedback newFeedback = _feedback.copyWith(starRates: rate);
    _feedback = newFeedback;
    notifyListeners();
  }

  void sendFeedback({required String detail}) {
    Feedback newFeedback = _feedback.copyWith(feedback: detail);
    _feedback = newFeedback;
    FeedbackRepository().sendFeedback(feedback: feedback);
  }
}
