// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackImpl _$$FeedbackImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackImpl(
      starRates: (json['starRates'] as num).toInt(),
      feedback: json['feedback'] as String,
    );

Map<String, dynamic> _$$FeedbackImplToJson(_$FeedbackImpl instance) =>
    <String, dynamic>{
      'starRates': instance.starRates,
      'feedback': instance.feedback,
    };
