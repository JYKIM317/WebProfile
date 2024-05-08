import 'package:freezed_annotation/freezed_annotation.dart';

part 'projects.freezed.dart';
part 'projects.g.dart';

@freezed
class Projects with _$Projects {
  factory Projects({
    required String appName,
    required List<dynamic> thumbnailURLs,
    required List<dynamic> usingSkills,
    required String description,
    required String startFlag,
    required String endFlag,
  }) = _Projects;

  factory Projects.fromJson(Map<String, dynamic> json) =>
      _$ProjectsFromJson(json);
}
