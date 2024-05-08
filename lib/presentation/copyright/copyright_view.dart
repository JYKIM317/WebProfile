import 'package:flutter/material.dart';

class CopyrightText extends StatelessWidget {
  const CopyrightText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Center(
        child: Text(
          'Copyright ⓒ 2024 Jinyoung Kim',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
