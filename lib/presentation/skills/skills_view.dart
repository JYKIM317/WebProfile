import 'package:flutter/material.dart';

List<String> logoList = [
  'assets/images/flutter_logo.png',
  'assets/images/dart_logo.png',
  'assets/images/git_logo.png',
  'assets/images/github_logo.png',
  'assets/images/firebase_logo.png',
  'assets/images/figma_logo.png',
  'assets/images/slack_logo.png',
];

class Skills extends StatelessWidget {
  final bool isMobile;
  const Skills({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Center(
            child: Text(
              'Skills',
              style: TextStyle(
                fontSize: isMobile ? 32 : 48,
              ),
            ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          if (isMobile)
            Column(
              children: List.generate(
                logoList.length,
                (index) => LogoView(image: logoList[index], isMobile: isMobile),
              ),
            ),
          if (!isMobile)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                logoList.length,
                (index) => LogoView(image: logoList[index], isMobile: isMobile),
              ),
            ),
        ],
      ),
    );
  }
}

class LogoView extends StatefulWidget {
  final String image;
  final bool isMobile;
  const LogoView({super.key, required this.image, required this.isMobile});

  @override
  State<LogoView> createState() => _LogoViewState();
}

class _LogoViewState extends State<LogoView> {
  late bool isMobile;
  late String image;

  bool hoverState = false;

  @override
  void initState() {
    isMobile = widget.isMobile;
    image = widget.image;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return !isMobile
        ? InkWell(
            onHover: (state) {
              setState(() {
                hoverState = state;
              });
            },
            onTap: () {},
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            mouseCursor: MouseCursor.uncontrolled,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.center,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..rotateX(hoverState ? 0.4 : 0)
                      ..rotateY(hoverState ? 0.4 : 0),
                    child: Image.asset(image),
                  ),
                ),
                Text(
                  image.replaceAll(RegExp(r'assets\/images\/|_logo.png'), ''),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          )
        : SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.center,
                  child: Image.asset(image),
                ),
                const SizedBox(width: 10),
                Text(
                  image.replaceAll(RegExp(r'assets\/images\/|_logo.png'), ''),
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
          );
  }
}
