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
      description: json['description'] as String,
      startFlag: json['startFlag'] as String,
      endFlag: json['endFlag'] as String,
    );

Map<String, dynamic> _$$ProjectsImplToJson(_$ProjectsImpl instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'thumbnailURLs': instance.thumbnailURLs,
      'usingSkills': instance.usingSkills,
      'description': instance.description,
      'startFlag': instance.startFlag,
      'endFlag': instance.endFlag,
    };
