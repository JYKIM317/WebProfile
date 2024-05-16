// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectsImpl _$$ProjectsImplFromJson(Map<String, dynamic> json) =>
    _$ProjectsImpl(
      appName: json['appName'] as String,
      thumbnailURLs: json['thumbnailURLs'] as List<dynamic>,
      usingSkills: json['usingSkills'] as List<dynamic>,
      about: json['about'] as String,
      background: json['background'] as String,
      learn: json['learn'] as String,
    );

Map<String, dynamic> _$$ProjectsImplToJson(_$ProjectsImpl instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'thumbnailURLs': instance.thumbnailURLs,
      'usingSkills': instance.usingSkills,
      'about': instance.about,
      'background': instance.background,
      'learn': instance.learn,
    };
