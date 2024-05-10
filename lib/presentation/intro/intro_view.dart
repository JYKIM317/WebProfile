import 'package:flutter/material.dart';

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
        color: Colors.black,
      ),
    );
  }
}
