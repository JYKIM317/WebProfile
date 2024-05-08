// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Feedback _$FeedbackFromJson(Map<String, dynamic> json) {
  return _Feedback.fromJson(json);
}

/// @nodoc
mixin _$Feedback {
  int get starRates => throw _privateConstructorUsedError;
  String get feedback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackCopyWith<Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackCopyWith<$Res> {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) then) =
      _$FeedbackCopyWithImpl<$Res, Feedback>;
  @useResult
  $Res call({int starRates, String feedback});
}

/// @nodoc
class _$FeedbackCopyWithImpl<$Res, $Val extends Feedback>
    implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? starRates = null,
    Object? feedback = null,
  }) {
    return _then(_value.copyWith(
      starRates: null == starRates
          ? _value.starRates
          : starRates // ignore: cast_nullable_to_non_nullable
              as int,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedbackImplCopyWith<$Res>
    implements $FeedbackCopyWith<$Res> {
  factory _$$FeedbackImplCopyWith(
          _$FeedbackImpl value, $Res Function(_$FeedbackImpl) then) =
      __$$FeedbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int starRates, String feedback});
}

/// @nodoc
class __$$FeedbackImplCopyWithImpl<$Res>
    extends _$FeedbackCopyWithImpl<$Res, _$FeedbackImpl>
    implements _$$FeedbackImplCopyWith<$Res> {
  __$$FeedbackImplCopyWithImpl(
      _$FeedbackImpl _value, $Res Function(_$FeedbackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? starRates = null,
    Object? feedback = null,
  }) {
    return _then(_$FeedbackImpl(
      starRates: null == starRates
          ? _value.starRates
          : starRates // ignore: cast_nullable_to_non_nullable
              as int,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackImpl implements _Feedback {
  _$FeedbackImpl({required this.starRates, required this.feedback});

  factory _$FeedbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackImplFromJson(json);

  @override
  final int starRates;
  @override
  final String feedback;

  @override
  String toString() {
    return 'Feedback(starRates: $starRates, feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackImpl &&
            (identical(other.starRates, starRates) ||
                other.starRates == starRates) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, starRates, feedback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackImplCopyWith<_$FeedbackImpl> get copyWith =>
      __$$FeedbackImplCopyWithImpl<_$FeedbackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackImplToJson(
      this,
    );
  }
}

abstract class _Feedback implements Feedback {
  factory _Feedback(
      {required final int starRates,
      required final String feedback}) = _$FeedbackImpl;

  factory _Feedback.fromJson(Map<String, dynamic> json) =
      _$FeedbackImpl.fromJson;

  @override
  int get starRates;
  @override
  String get feedback;
  @override
  @JsonKey(ignore: true)
  _$$FeedbackImplCopyWith<_$FeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
