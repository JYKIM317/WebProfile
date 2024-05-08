import 'package:flutter/material.dart';

class StarRatesText extends StatelessWidget {
  final bool isMobile;
  const StarRatesText({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          '끝까지 봐주셔서 감사합니다.\n포트폴리오는 어떠셨나요?',
          style: TextStyle(fontSize: isMobile ? 24 : 32),
        ),
      ),
    );
  }
}
