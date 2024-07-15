// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatedPost _$CreatedPostFromJson(Map<String, dynamic> json) {
  return _CreatedPost.fromJson(json);
}

/// @nodoc
mixin _$CreatedPost {
  String get creatorName => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatedPostCopyWith<CreatedPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedPostCopyWith<$Res> {
  factory $CreatedPostCopyWith(
          CreatedPost value, $Res Function(CreatedPost) then) =
      _$CreatedPostCopyWithImpl<$Res, CreatedPost>;
  @useResult
  $Res call(
      {String creatorName, String topic, String description, String? imageUrl});
}

/// @nodoc
class _$CreatedPostCopyWithImpl<$Res, $Val extends CreatedPost>
    implements $CreatedPostCopyWith<$Res> {
  _$CreatedPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatorName = null,
    Object? topic = null,
    Object? description = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatedPostImplCopyWith<$Res>
    implements $CreatedPostCopyWith<$Res> {
  factory _$$CreatedPostImplCopyWith(
          _$CreatedPostImpl value, $Res Function(_$CreatedPostImpl) then) =
      __$$CreatedPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String creatorName, String topic, String description, String? imageUrl});
}

/// @nodoc
class __$$CreatedPostImplCopyWithImpl<$Res>
    extends _$CreatedPostCopyWithImpl<$Res, _$CreatedPostImpl>
    implements _$$CreatedPostImplCopyWith<$Res> {
  __$$CreatedPostImplCopyWithImpl(
      _$CreatedPostImpl _value, $Res Function(_$CreatedPostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatorName = null,
    Object? topic = null,
    Object? description = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$CreatedPostImpl(
      creatorName: null == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatedPostImpl implements _CreatedPost {
  const _$CreatedPostImpl(
      {required this.creatorName,
      required this.topic,
      required this.description,
      this.imageUrl});

  factory _$CreatedPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedPostImplFromJson(json);

  @override
  final String creatorName;
  @override
  final String topic;
  @override
  final String description;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'CreatedPost(creatorName: $creatorName, topic: $topic, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedPostImpl &&
            (identical(other.creatorName, creatorName) ||
                other.creatorName == creatorName) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, creatorName, topic, description, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedPostImplCopyWith<_$CreatedPostImpl> get copyWith =>
      __$$CreatedPostImplCopyWithImpl<_$CreatedPostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedPostImplToJson(
      this,
    );
  }
}

abstract class _CreatedPost implements CreatedPost {
  const factory _CreatedPost(
      {required final String creatorName,
      required final String topic,
      required final String description,
      final String? imageUrl}) = _$CreatedPostImpl;

  factory _CreatedPost.fromJson(Map<String, dynamic> json) =
      _$CreatedPostImpl.fromJson;

  @override
  String get creatorName;
  @override
  String get topic;
  @override
  String get description;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CreatedPostImplCopyWith<_$CreatedPostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
