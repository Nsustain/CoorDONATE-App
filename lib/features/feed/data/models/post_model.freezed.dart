// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  String get postId => throw _privateConstructorUsedError;
  PostUserModel get postUserModel => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String>? get postImageUrl => throw _privateConstructorUsedError;
  String? get postText => throw _privateConstructorUsedError;
  int get like => throw _privateConstructorUsedError;
  int get comments => throw _privateConstructorUsedError;
  bool get bookMarked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {String postId,
      PostUserModel postUserModel,
      List<String> tags,
      List<String>? postImageUrl,
      String? postText,
      int like,
      int comments,
      bool bookMarked});

  $PostUserModelCopyWith<$Res> get postUserModel;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? postUserModel = null,
    Object? tags = null,
    Object? postImageUrl = freezed,
    Object? postText = freezed,
    Object? like = null,
    Object? comments = null,
    Object? bookMarked = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      postUserModel: null == postUserModel
          ? _value.postUserModel
          : postUserModel // ignore: cast_nullable_to_non_nullable
              as PostUserModel,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postImageUrl: freezed == postImageUrl
          ? _value.postImageUrl
          : postImageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostUserModelCopyWith<$Res> get postUserModel {
    return $PostUserModelCopyWith<$Res>(_value.postUserModel, (value) {
      return _then(_value.copyWith(postUserModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$$_PostModelCopyWith(
          _$_PostModel value, $Res Function(_$_PostModel) then) =
      __$$_PostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String postId,
      PostUserModel postUserModel,
      List<String> tags,
      List<String>? postImageUrl,
      String? postText,
      int like,
      int comments,
      bool bookMarked});

  @override
  $PostUserModelCopyWith<$Res> get postUserModel;
}

/// @nodoc
class __$$_PostModelCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$_PostModel>
    implements _$$_PostModelCopyWith<$Res> {
  __$$_PostModelCopyWithImpl(
      _$_PostModel _value, $Res Function(_$_PostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? postUserModel = null,
    Object? tags = null,
    Object? postImageUrl = freezed,
    Object? postText = freezed,
    Object? like = null,
    Object? comments = null,
    Object? bookMarked = null,
  }) {
    return _then(_$_PostModel(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      postUserModel: null == postUserModel
          ? _value.postUserModel
          : postUserModel // ignore: cast_nullable_to_non_nullable
              as PostUserModel,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postImageUrl: freezed == postImageUrl
          ? _value._postImageUrl
          : postImageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostModel implements _PostModel {
  const _$_PostModel(
      {required this.postId,
      required this.postUserModel,
      required final List<String> tags,
      final List<String>? postImageUrl,
      this.postText,
      required this.like,
      required this.comments,
      required this.bookMarked})
      : _tags = tags,
        _postImageUrl = postImageUrl;

  factory _$_PostModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostModelFromJson(json);

  @override
  final String postId;
  @override
  final PostUserModel postUserModel;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String>? _postImageUrl;
  @override
  List<String>? get postImageUrl {
    final value = _postImageUrl;
    if (value == null) return null;
    if (_postImageUrl is EqualUnmodifiableListView) return _postImageUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
  String toString() {
    return 'PostModel(postId: $postId, postUserModel: $postUserModel, tags: $tags, postImageUrl: $postImageUrl, postText: $postText, like: $like, comments: $comments, bookMarked: $bookMarked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostModel &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.postUserModel, postUserModel) ||
                other.postUserModel == postUserModel) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._postImageUrl, _postImageUrl) &&
            (identical(other.postText, postText) ||
                other.postText == postText) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.bookMarked, bookMarked) ||
                other.bookMarked == bookMarked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      postUserModel,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_postImageUrl),
      postText,
      like,
      comments,
      bookMarked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      __$$_PostModelCopyWithImpl<_$_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostModelToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {required final String postId,
      required final PostUserModel postUserModel,
      required final List<String> tags,
      final List<String>? postImageUrl,
      final String? postText,
      required final int like,
      required final int comments,
      required final bool bookMarked}) = _$_PostModel;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$_PostModel.fromJson;

  @override
  String get postId;
  @override
  PostUserModel get postUserModel;
  @override
  List<String> get tags;
  @override
  List<String>? get postImageUrl;
  @override
  String? get postText;
  @override
  int get like;
  @override
  int get comments;
  @override
  bool get bookMarked;
  @override
  @JsonKey(ignore: true)
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
