import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class IntroView extends StatefulWidget {
  final bool isMobile;
  const IntroView({super.key, required this.isMobile});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Colors.transparent,
            ],
          ),
        ),
        child: Center(
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TyperAnimatedText(
                '안녕하세요!',
                textStyle: TextStyle(
                  fontSize: widget.isMobile ? 48 : 62,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                speed: const Duration(milliseconds: 300),
                curve: Curves.easeInToLinear,
              ),
              TyperAnimatedText(
                '보러 와주셔서 감사합니다.',
                textStyle: TextStyle(
                  fontSize: widget.isMobile ? 34 : 62,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                speed: const Duration(milliseconds: 240),
                curve: Curves.fastEaseInToSlowEaseOut,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
