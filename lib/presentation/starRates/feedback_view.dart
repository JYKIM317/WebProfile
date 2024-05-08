import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webprofile/provider/page_provider.dart';

class FeedbackAlert extends ConsumerWidget {
  const FeedbackAlert({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int starRate = ref.read(starRatesProvider).feedback.starRates;
    String feedback = '';
    return AlertDialog(
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Text('평가해주셔서 감사합니다!'),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$starRate점을 남겨주셨어요\n개선되면 좋겠다고 생각하신 부분이 있으셨나요?'),
          TextField(
            minLines: 1,
            maxLines: 5,
            onChanged: (text) {
              feedback = text;
            },
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('취소'),
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(starRatesProvider).sendFeedback(detail: feedback);
            Navigator.pop(context);
          },
          child: const Text('평가하기'),
        ),
      ],
    );
  }
}
