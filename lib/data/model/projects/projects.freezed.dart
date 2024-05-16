// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Projects _$ProjectsFromJson(Map<String, dynamic> json) {
  return _Projects.fromJson(json);
}

/// @nodoc
mixin _$Projects {
  String get appName => throw _privateConstructorUsedError;
  List<dynamic> get thumbnailURLs => throw _privateConstructorUsedError;
  List<dynamic> get usingSkills => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  String get background => throw _privateConstructorUsedError;
  String get learn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectsCopyWith<Projects> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsCopyWith<$Res> {
  factory $ProjectsCopyWith(Projects value, $Res Function(Projects) then) =
      _$ProjectsCopyWithImpl<$Res, Projects>;
  @useResult
  $Res call(
      {String appName,
      List<dynamic> thumbnailURLs,
      List<dynamic> usingSkills,
      String about,
      String background,
      String learn});
}

/// @nodoc
class _$ProjectsCopyWithImpl<$Res, $Val extends Projects>
    implements $ProjectsCopyWith<$Res> {
  _$ProjectsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? thumbnailURLs = null,
    Object? usingSkills = null,
    Object? about = null,
    Object? background = null,
    Object? learn = null,
  }) {
    return _then(_value.copyWith(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailURLs: null == thumbnailURLs
          ? _value.thumbnailURLs
          : thumbnailURLs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      usingSkills: null == usingSkills
          ? _value.usingSkills
          : usingSkills // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      learn: null == learn
          ? _value.learn
          : learn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectsImplCopyWith<$Res>
    implements $ProjectsCopyWith<$Res> {
  factory _$$ProjectsImplCopyWith(
          _$ProjectsImpl value, $Res Function(_$ProjectsImpl) then) =
      __$$ProjectsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appName,
      List<dynamic> thumbnailURLs,
      List<dynamic> usingSkills,
      String about,
      String background,
      String learn});
}

/// @nodoc
class __$$ProjectsImplCopyWithImpl<$Res>
    extends _$ProjectsCopyWithImpl<$Res, _$ProjectsImpl>
    implements _$$ProjectsImplCopyWith<$Res> {
  __$$ProjectsImplCopyWithImpl(
      _$ProjectsImpl _value, $Res Function(_$ProjectsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appName = null,
    Object? thumbnailURLs = null,
    Object? usingSkills = null,
    Object? about = null,
    Object? background = null,
    Object? learn = null,
  }) {
    return _then(_$ProjectsImpl(
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailURLs: null == thumbnailURLs
          ? _value._thumbnailURLs
          : thumbnailURLs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      usingSkills: null == usingSkills
          ? _value._usingSkills
          : usingSkills // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      learn: null == learn
          ? _value.learn
          : learn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectsImpl implements _Projects {
  _$ProjectsImpl(
      {required this.appName,
      required final List<dynamic> thumbnailURLs,
      required final List<dynamic> usingSkills,
      required this.about,
      required this.background,
      required this.learn})
      : _thumbnailURLs = thumbnailURLs,
        _usingSkills = usingSkills;

  factory _$ProjectsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectsImplFromJson(json);

  @override
  final String appName;
  final List<dynamic> _thumbnailURLs;
  @override
  List<dynamic> get thumbnailURLs {
    if (_thumbnailURLs is EqualUnmodifiableListView) return _thumbnailURLs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_thumbnailURLs);
  }

  final List<dynamic> _usingSkills;
  @override
  List<dynamic> get usingSkills {
    if (_usingSkills is EqualUnmodifiableListView) return _usingSkills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usingSkills);
  }

  @override
  final String about;
  @override
  final String background;
  @override
  final String learn;

  @override
  String toString() {
    return 'Projects(appName: $appName, thumbnailURLs: $thumbnailURLs, usingSkills: $usingSkills, about: $about, background: $background, learn: $learn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsImpl &&
            (identical(other.appName, appName) || other.appName == appName) &&
            const DeepCollectionEquality()
                .equals(other._thumbnailURLs, _thumbnailURLs) &&
            const DeepCollectionEquality()
                .equals(other._usingSkills, _usingSkills) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.learn, learn) || other.learn == learn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      appName,
      const DeepCollectionEquality().hash(_thumbnailURLs),
      const DeepCollectionEquality().hash(_usingSkills),
      about,
      background,
      learn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsImplCopyWith<_$ProjectsImpl> get copyWith =>
      __$$ProjectsImplCopyWithImpl<_$ProjectsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectsImplToJson(
      this,
    );
  }
}

abstract class _Projects implements Projects {
  factory _Projects(
      {required final String appName,
      required final List<dynamic> thumbnailURLs,
      required final List<dynamic> usingSkills,
      required final String about,
      required final String background,
      required final String learn}) = _$ProjectsImpl;

  factory _Projects.fromJson(Map<String, dynamic> json) =
      _$ProjectsImpl.fromJson;

  @override
  String get appName;
  @override
  List<dynamic> get thumbnailURLs;
  @override
  List<dynamic> get usingSkills;
  @override
  String get about;
  @override
  String get background;
  @override
  String get learn;
  @override
  @JsonKey(ignore: true)
  _$$ProjectsImplCopyWith<_$ProjectsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
