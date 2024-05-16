import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webprofile/data/model/projects/projects.dart';
import 'package:webprofile/presentation/projects/projects_widget.dart';
import 'package:webprofile/provider/page_provider.dart';

class ProjectsView extends ConsumerWidget {
  final bool isMobile;
  const ProjectsView({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Projects>? projectList = ref.watch(projectsProvider).projectList;
    if (projectList == null) {
      ref.read(projectsProvider).fetchData();
      //loading widget
      return const SliverToBoxAdapter(child: SizedBox());
    }

    return SliverToBoxAdapter(
      child: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black54,
                    width: isMobile ? 2 : 4,
                  ),
                ),
              ),
              child: Text(
                'Projects',
                style: TextStyle(
                  fontSize: isMobile ? 32 : 48,
                  letterSpacing: 4,
                ),
              ),
            ),
          ),
          SizedBox(height: isMobile ? 20 : 40),
          Column(
            children: List.generate(projectList.length, (index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: isMobile ? 10 : 20),
                child: isMobile
                    ? ProjectReadmeMobile(project: projectList[index])
                    : ProjectReadmeDesktop(project: projectList[index]),
              );
            }),
          ),
        ],
      ),
    );
  }
}
