import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

enum HoverState {
  nil,
  name,
  birth,
  email,
  github,
}

class AboutMe extends StatefulWidget {
  final bool isMobile;
  const AboutMe({super.key, required this.isMobile});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> with TickerProviderStateMixin {
  HoverState hoverState = HoverState.nil;
  Duration eventDuration = const Duration(milliseconds: 100);

  @override
  Widget build(BuildContext context) {
    bool isMobile = widget.isMobile;
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Center(
            child: Text(
              'About me',
              style: TextStyle(
                fontSize: isMobile ? 32 : 48,
              ),
            ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          if (isMobile)
            Column(
              children: [
                name(HoverState.nil),
                const SizedBox(height: 10),
                birth(HoverState.nil),
                const SizedBox(height: 10),
                InkWell(
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onTap: () async {
                    Clipboard.setData(
                      const ClipboardData(text: 'delivalue100@gmail.com'),
                    );

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('복사 완료'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
                  child: email(HoverState.nil),
                ),
                const SizedBox(height: 10),
                InkWell(
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onTap: () async {
                    final Uri gitHubUrl =
                        Uri.parse('https://github.com/JYKIM317');
                    await launchUrl(gitHubUrl);
                  },
                  child: github(HoverState.nil),
                ),
              ],
            ),
          if (!isMobile)
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onHover: (state) {
                        setState(() {
                          state
                              ? hoverState = HoverState.name
                              : hoverState = HoverState.nil;
                        });
                      },
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      mouseCursor: MouseCursor.uncontrolled,
                      onTap: () {},
                      child: name(hoverState),
                    ),
                    InkWell(
                      onHover: (state) {
                        setState(() {
                          state
                              ? hoverState = HoverState.birth
                              : hoverState = HoverState.nil;
                        });
                      },
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      mouseCursor: MouseCursor.uncontrolled,
                      onTap: () {},
                      child: birth(hoverState),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onHover: (state) {
                        setState(() {
                          state
                              ? hoverState = HoverState.email
                              : hoverState = HoverState.nil;
                        });
                      },
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        Clipboard.setData(
                          const ClipboardData(text: 'delivalue100@gmail.com'),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('복사 완료'),
                            duration: Duration(seconds: 3),
                          ),
                        );
                      },
                      child: email(hoverState),
                    ),
                    InkWell(
                      onHover: (state) {
                        setState(() {
                          state
                              ? hoverState = HoverState.github
                              : hoverState = HoverState.nil;
                        });
                      },
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        final Uri gitHubUrl =
                            Uri.parse('https://github.com/JYKIM317');
                        await launchUrl(gitHubUrl);
                      },
                      child: github(hoverState),
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}

Widget name(HoverState state) {
  return Container(
    width: 250,
    height: 60,
    alignment: Alignment.center,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          alignment: Alignment.topCenter,
          child: Transform(
            transform: Matrix4.identity()
              ..rotateX(state == HoverState.name ? 0.4 : 0)
              ..rotateY(state == HoverState.name ? 0.4 : 0),
            child: const FaIcon(
              FontAwesomeIcons.person,
              size: 52,
            ),
          ),
        ),
        const SizedBox(width: 20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '김진영',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget birth(HoverState state) {
  return Container(
    width: 250,
    height: 60,
    alignment: Alignment.center,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          alignment: Alignment.topCenter,
          child: Transform(
            transform: Matrix4.identity()
              ..rotateX(state == HoverState.birth ? 0.4 : 0)
              ..rotateY(state == HoverState.birth ? 0.4 : 0),
            child: const FaIcon(
              FontAwesomeIcons.egg,
              size: 52,
            ),
          ),
        ),
        const SizedBox(width: 20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Birth',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '00.03.17',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget email(HoverState state) {
  return Container(
    width: 250,
    height: 60,
    alignment: Alignment.center,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          alignment: Alignment.topCenter,
          child: Transform(
            transform: Matrix4.identity()
              ..rotateX(state == HoverState.email ? 0.4 : 0)
              ..rotateY(state == HoverState.email ? 0.4 : 0),
            child: const FaIcon(
              FontAwesomeIcons.envelope,
              size: 52,
            ),
          ),
        ),
        const SizedBox(width: 20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'delivalue100@gmail',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ],
    ),
  );
}

//Github
Widget github(HoverState state) {
  return Container(
    width: 250,
    height: 60,
    alignment: Alignment.center,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 50,
          alignment: Alignment.topCenter,
          child: Transform(
            transform: Matrix4.identity()
              ..rotateX(state == HoverState.github ? 0.4 : 0)
              ..rotateY(state == HoverState.github ? 0.4 : 0),
            child: const FaIcon(
              FontAwesomeIcons.github,
              size: 52,
            ),
          ),
        ),
        const SizedBox(width: 20),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Github',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'JYKIM0317',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ],
    ),
  );
}
