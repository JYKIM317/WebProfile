import 'package:flutter/material.dart';
import 'package:webprofile/data/model/projects/projects.dart';
import 'package:webprofile/data/repository/projects_repository.dart';

class ProjectsViewModel extends ChangeNotifier {
  List<Projects>? _projectList;

  List<Projects>? get projectList => _projectList;

  fetchData() async {
    _projectList = await ProjectsRepository().getProjects();
    notifyListeners();
  }
}
