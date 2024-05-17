import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:webprofile/data/model/projects/projects.dart';
import 'package:transparent_image/transparent_image.dart';

class ProjectReadmeDesktop extends StatefulWidget {
  final Projects project;
  const ProjectReadmeDesktop({super.key, required this.project});

  @override
  State<ProjectReadmeDesktop> createState() => _ProjectReadmeDesktopState();
}

class _ProjectReadmeDesktopState extends State<ProjectReadmeDesktop> {
  int imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Projects project = widget.project;
    return SizedBox(
      height: 600,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.only(bottom: 80),
                  clipBehavior: Clip.hardEdge,
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: NetworkImage(project.thumbnailURLs[imageIndex]),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  alignment: Alignment.center,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: project.thumbnailURLs.length,
                    itemBuilder: (BuildContext ctx, int idx) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            imageIndex = idx;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: idx == imageIndex
                                  ? Colors.deepOrange
                                  : Colors.white,
                              width: 2,
                            ),
                          ),
                          child: FadeInImage(
                            placeholder: MemoryImage(kTransparentImage),
                            image: NetworkImage(project.thumbnailURLs[idx]),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (ctx, idx) {
                      return const SizedBox(width: 10);
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: Column(
                children: [
                  Text(
                    project.appName,
                    style: const TextStyle(fontSize: 32),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 5,
                    runSpacing: 5,
                    children: List.generate(
                      project.usingSkills.length,
                      (index) {
                        return Text.rich(
                          TextSpan(
                            text: '#',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: project.usingSkills[index],
                                style: const TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text.rich(
                          textAlign: TextAlign.left,
                          TextSpan(
                            text: '\n어떤 앱인가요?\n\n',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: project.about.replaceAll('  ', '\n'),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const TextSpan(
                                text: '\n\n앱의 제작배경\n\n',
                              ),
                              TextSpan(
                                text: project.background.replaceAll('  ', '\n'),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              const TextSpan(
                                text: '\n\n무엇을 배웠나요?\n\n',
                              ),
                              TextSpan(
                                text: project.learn.replaceAll('  ', '\n'),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectReadmeMobile extends StatefulWidget {
  final Projects project;
  const ProjectReadmeMobile({super.key, required this.project});

  @override
  State<ProjectReadmeMobile> createState() => _ProjectReadmeState();
}

class _ProjectReadmeState extends State<ProjectReadmeMobile> {
  int imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Projects project = widget.project;
    return SizedBox(
      width: double.infinity,
      height: 800,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.only(bottom: 50),
                  clipBehavior: Clip.hardEdge,
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: NetworkImage(project.thumbnailURLs[imageIndex]),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 70,
                  alignment: Alignment.center,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: project.thumbnailURLs.length,
                    itemBuilder: (BuildContext ctx, int idx) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            imageIndex = idx;
                          });
                        },
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: idx == imageIndex
                                  ? Colors.deepOrange
                                  : Colors.white,
                              width: 2,
                            ),
                          ),
                          child: FadeInImage(
                            placeholder: MemoryImage(kTransparentImage),
                            image: NetworkImage(project.thumbnailURLs[idx]),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (ctx, idx) {
                      return const SizedBox(width: 10);
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            direction: Axis.horizontal,
            spacing: 5,
            runSpacing: 5,
            children: List.generate(
              project.usingSkills.length,
              (index) {
                return Text.rich(
                  TextSpan(
                    text: '#',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: project.usingSkills[index],
                        style: const TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        project.appName,
                        style: const TextStyle(fontSize: 28),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text.rich(
                          textAlign: TextAlign.left,
                          TextSpan(
                            text: '\n어떤 앱인가요?\n\n',
                            style: const TextStyle(fontSize: 18),
                            children: [
                              TextSpan(
                                text: project.about,
                                style: const TextStyle(fontSize: 14),
                              ),
                              const TextSpan(
                                text: '\n\n앱의 제작배경\n\n',
                              ),
                              TextSpan(
                                text: project.background,
                                style: const TextStyle(fontSize: 14),
                              ),
                              const TextSpan(
                                text: '\n\n무엇을 배웠나요?\n\n',
                              ),
                              TextSpan(
                                text: project.learn,
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
