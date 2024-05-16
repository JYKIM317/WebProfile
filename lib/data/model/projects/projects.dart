import 'package:freezed_annotation/freezed_annotation.dart';

part 'projects.freezed.dart';
part 'projects.g.dart';

@freezed
class Projects with _$Projects {
  factory Projects({
    required String appName,
    required List<dynamic> thumbnailURLs,
    required List<dynamic> usingSkills,
    required String about,
    required String background,
    required String learn,
  }) = _Projects;

  factory Projects.fromJson(Map<String, dynamic> json) =>
      _$ProjectsFromJson(json);
}
