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
  int get id => throw _privateConstructorUsedError;
  String? get postCreated => throw _privateConstructorUsedError;
  PostUserModel get user => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  int get comments => throw _privateConstructorUsedError;
  bool? get bookMarked => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;

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
      {int id,
      String? postCreated,
      PostUserModel user,
      List<String>? tags,
      List<String>? images,
      String? text,
      int likes,
      int comments,
      bool? bookMarked,
      bool? liked});

  $PostUserModelCopyWith<$Res> get user;
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
    Object? id = null,
    Object? postCreated = freezed,
    Object? user = null,
    Object? tags = freezed,
    Object? images = freezed,
    Object? text = freezed,
    Object? likes = null,
    Object? comments = null,
    Object? bookMarked = freezed,
    Object? liked = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postCreated: freezed == postCreated
          ? _value.postCreated
          : postCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as PostUserModel,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      bookMarked: freezed == bookMarked
          ? _value.bookMarked
          : bookMarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostUserModelCopyWith<$Res> get user {
    return $PostUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
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
      {int id,
      String? postCreated,
      PostUserModel user,
      List<String>? tags,
      List<String>? images,
      String? text,
      int likes,
      int comments,
      bool? bookMarked,
      bool? liked});

  @override
  $PostUserModelCopyWith<$Res> get user;
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
    Object? id = null,
    Object? postCreated = freezed,
    Object? user = null,
    Object? tags = freezed,
    Object? images = freezed,
    Object? text = freezed,
    Object? likes = null,
    Object? comments = null,
    Object? bookMarked = freezed,
    Object? liked = freezed,
  }) {
    return _then(_$_PostModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postCreated: freezed == postCreated
          ? _value.postCreated
          : postCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as PostUserModel,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as int,
      bookMarked: freezed == bookMarked
          ? _value.bookMarked
          : bookMarked // ignore: cast_nullable_to_non_nullable
              as bool?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostModel extends _PostModel {
  const _$_PostModel(
      {required this.id,
      required this.postCreated,
      required this.user,
      required final List<String>? tags,
      required final List<String>? images,
      this.text,
      required this.likes,
      required this.comments,
      required this.bookMarked,
      required this.liked})
      : _tags = tags,
        _images = images,
        super._();

  factory _$_PostModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostModelFromJson(json);

  @override
  final int id;
  @override
  final String? postCreated;
  @override
  final PostUserModel user;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? text;
  @override
  final int likes;
  @override
  final int comments;
  @override
  final bool? bookMarked;
  @override
  final bool? liked;

  @override
  String toString() {
    return 'PostModel(id: $id, postCreated: $postCreated, user: $user, tags: $tags, images: $images, text: $text, likes: $likes, comments: $comments, bookMarked: $bookMarked, liked: $liked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postCreated, postCreated) ||
                other.postCreated == postCreated) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.comments, comments) ||
                other.comments == comments) &&
            (identical(other.bookMarked, bookMarked) ||
                other.bookMarked == bookMarked) &&
            (identical(other.liked, liked) || other.liked == liked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      postCreated,
      user,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_images),
      text,
      likes,
      comments,
      bookMarked,
      liked);

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

abstract class _PostModel extends PostModel {
  const factory _PostModel(
      {required final int id,
      required final String? postCreated,
      required final PostUserModel user,
      required final List<String>? tags,
      required final List<String>? images,
      final String? text,
      required final int likes,
      required final int comments,
      required final bool? bookMarked,
      required final bool? liked}) = _$_PostModel;
  const _PostModel._() : super._();

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$_PostModel.fromJson;

  @override
  int get id;
  @override
  String? get postCreated;
  @override
  PostUserModel get user;
  @override
  List<String>? get tags;
  @override
  List<String>? get images;
  @override
  String? get text;
  @override
  int get likes;
  @override
  int get comments;
  @override
  bool? get bookMarked;
  @override
  bool? get liked;
  @override
  @JsonKey(ignore: true)
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
