// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostEntity {
  int get postId => throw _privateConstructorUsedError;
  PostUserEntity get postUserEntity => throw _privateConstructorUsedError;
  String get postCreated => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<String> get postImageUrl => throw _privateConstructorUsedError;
  String? get postText => throw _privateConstructorUsedError;
  int get like => throw _privateConstructorUsedError;
  int get comments => throw _privateConstructorUsedError;
  bool get bookMarked => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostEntityCopyWith<PostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEntityCopyWith<$Res> {
  factory $PostEntityCopyWith(
          PostEntity value, $Res Function(PostEntity) then) =
      _$PostEntityCopyWithImpl<$Res, PostEntity>;
  @useResult
  $Res call(
      {int postId,
      PostUserEntity postUserEntity,
      String postCreated,
      List<String>? tags,
      List<String> postImageUrl,
      String? postText,
      int like,
      int comments,
      bool bookMarked,
      bool? liked});

  $PostUserEntityCopyWith<$Res> get postUserEntity;
}

/// @nodoc
class _$PostEntityCopyWithImpl<$Res, $Val extends PostEntity>
    implements $PostEntityCopyWith<$Res> {
  _$PostEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? postUserEntity = null,
    Object? postCreated = null,
    Object? tags = freezed,
    Object? postImageUrl = null,
    Object? postText = freezed,
    Object? like = null,
    Object? comments = null,
    Object? bookMarked = null,
    Object? liked = freezed,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      postUserEntity: null == postUserEntity
          ? _value.postUserEntity
          : postUserEntity // ignore: cast_nullable_to_non_nullable
              as PostUserEntity,
      postCreated: null == postCreated
          ? _value.postCreated
          : postCreated // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      postImageUrl: null == postImageUrl
          ? _value.postImageUrl
          : postImageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postText: freezed == postText
          ? _value.postText
          : postText // ignore: cast_nullable_to_non_nullable
              as String?,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      bookMarked: null == bookMarked
          ? _value.bookMarked
          : bookMarked // ignore: cast_nullable_to_non_nullable
              as bool,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostUserEntityCopyWith<$Res> get postUserEntity {
    return $PostUserEntityCopyWith<$Res>(_value.postUserEntity, (value) {
      return _then(_value.copyWith(postUserEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostEntityCopyWith<$Res>
    implements $PostEntityCopyWith<$Res> {
  factory _$$_PostEntityCopyWith(
          _$_PostEntity value, $Res Function(_$_PostEntity) then) =
      __$$_PostEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int postId,
      PostUserEntity postUserEntity,
      String postCreated,
      List<String>? tags,
      List<String> postImageUrl,
      String? postText,
      int like,
      int comments,
      bool bookMarked,
      bool? liked});

  @override
  $PostUserEntityCopyWith<$Res> get postUserEntity;
}

/// @nodoc
class __$$_PostEntityCopyWithImpl<$Res>
    extends _$PostEntityCopyWithImpl<$Res, _$_PostEntity>
    implements _$$_PostEntityCopyWith<$Res> {
  __$$_PostEntityCopyWithImpl(
      _$_PostEntity _value, $Res Function(_$_PostEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? postUserEntity = null,
    Object? postCreated = null,
    Object? tags = freezed,
    Object? postImageUrl = null,
    Object? postText = freezed,
    Object? like = null,
    Object? comments = null,
    Object? bookMarked = null,
    Object? liked = freezed,
  }) {
    return _then(_$_PostEntity(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      postUserEntity: null == postUserEntity
          ? _value.postUserEntity
          : postUserEntity // ignore: cast_nullable_to_non_nullable
              as PostUserEntity,
      postCreated: null == postCreated
          ? _value.postCreated
          : postCreated // ignore: cast_nullable_to_non_nullable
              as String,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      postImageUrl: null == postImageUrl
          ? _value._postImageUrl
          : postImageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postText: freezed == postText
          ? _value.postText
          : postText // ignore: cast_nullable_to_non_nullable
              as String?,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      bookMarked: null == bookMarked
          ? _value.bookMarked
          : bookMarked // ignore: cast_nullable_to_non_nullable
              as bool,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_PostEntity implements _PostEntity {
  const _$_PostEntity(
      {required this.postId,
      required this.postUserEntity,
      required this.postCreated,
      required final List<String>? tags,
      required final List<String> postImageUrl,
      this.postText,
      required this.like,
      required this.comments,
      required this.bookMarked,
      required this.liked})
      : _tags = tags,
        _postImageUrl = postImageUrl;

  @override
  final int postId;
  @override
  final PostUserEntity postUserEntity;
  @override
  final String postCreated;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String> _postImageUrl;
  @override
  List<String> get postImageUrl {
    if (_postImageUrl is EqualUnmodifiableListView) return _postImageUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postImageUrl);
  }

  @override
  final String? postText;
  @override
  final int like;
  @override
  final int comments;
  @override
  final bool bookMarked;
  @override
  final bool? liked;

  @override
  String toString() {
    return 'PostEntity(postId: $postId, postUserEntity: $postUserEntity, postCreated: $postCreated, tags: $tags, postImageUrl: $postImageUrl, postText: $postText, like: $like, comments: $comments, bookMarked: $bookMarked, liked: $liked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostEntity &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.postUserEntity, postUserEntity) ||
                other.postUserEntity == postUserEntity) &&
            (identical(other.postCreated, postCreated) ||
                other.postCreated == postCreated) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._postImageUrl, _postImageUrl) &&
            (identical(other.postText, postText) ||
                other.postText == postText) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.bookMarked, bookMarked) ||
                other.bookMarked == bookMarked) &&
            (identical(other.liked, liked) || other.liked == liked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      postUserEntity,
      postCreated,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_postImageUrl),
      postText,
      like,
      comments,
      bookMarked,
      liked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostEntityCopyWith<_$_PostEntity> get copyWith =>
      __$$_PostEntityCopyWithImpl<_$_PostEntity>(this, _$identity);
}

abstract class _PostEntity implements PostEntity {
  const factory _PostEntity(
      {required final int postId,
      required final PostUserEntity postUserEntity,
      required final String postCreated,
      required final List<String>? tags,
      required final List<String> postImageUrl,
      final String? postText,
      required final int like,
      required final int comments,
      required final bool bookMarked,
      required final bool? liked}) = _$_PostEntity;

  @override
  int get postId;
  @override
  PostUserEntity get postUserEntity;
  @override
  String get postCreated;
  @override
  List<String>? get tags;
  @override
  List<String> get postImageUrl;
  @override
  String? get postText;
  @override
  int get like;
  @override
  int get comments;
  @override
  bool get bookMarked;
  @override
  bool? get liked;
  @override
  @JsonKey(ignore: true)
  _$$_PostEntityCopyWith<_$_PostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
