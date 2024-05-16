import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:webprofile/data/remote/projects_remote.dart';
import 'package:webprofile/data/model/projects/projects.dart';

class ProjectsRepository {
  Future<List<Projects>> getProjects() async {
    const String collectionName = 'project';
    List<Projects> projectList = [];

    await ProjectsRemote().getCollection(collectionName: collectionName).then(
      (snapshot) {
        if (snapshot != null) {
          for (QueryDocumentSnapshot doc in snapshot.docs) {
            Map<String, dynamic> json = doc.data() as Map<String, dynamic>;
            Projects project = Projects.fromJson(json);
            projectList.add(project);
          }
        }
      },
    );

    return projectList;
  }
}
