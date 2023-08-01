// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostsModel _$PostsModelFromJson(Map<String, dynamic> json) {
  return _Posts.fromJson(json);
}

/// @nodoc
mixin _$PostsModel {
  List<PostModel>? get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsModelCopyWith<PostsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsModelCopyWith<$Res> {
  factory $PostsModelCopyWith(
          PostsModel value, $Res Function(PostsModel) then) =
      _$PostsModelCopyWithImpl<$Res, PostsModel>;
  @useResult
  $Res call({List<PostModel>? posts});
}

/// @nodoc
class _$PostsModelCopyWithImpl<$Res, $Val extends PostsModel>
    implements $PostsModelCopyWith<$Res> {
  _$PostsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostsCopyWith<$Res> implements $PostsModelCopyWith<$Res> {
  factory _$$_PostsCopyWith(_$_Posts value, $Res Function(_$_Posts) then) =
      __$$_PostsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PostModel>? posts});
}

/// @nodoc
class __$$_PostsCopyWithImpl<$Res>
    extends _$PostsModelCopyWithImpl<$Res, _$_Posts>
    implements _$$_PostsCopyWith<$Res> {
  __$$_PostsCopyWithImpl(_$_Posts _value, $Res Function(_$_Posts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_$_Posts(
      posts: freezed == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Posts implements _Posts {
  const _$_Posts({final List<PostModel>? posts}) : _posts = posts;

  factory _$_Posts.fromJson(Map<String, dynamic> json) =>
      _$$_PostsFromJson(json);

  final List<PostModel>? _posts;
  @override
  List<PostModel>? get posts {
    final value = _posts;
    if (value == null) return null;
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostsModel(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Posts &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostsCopyWith<_$_Posts> get copyWith =>
      __$$_PostsCopyWithImpl<_$_Posts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsToJson(
      this,
    );
  }
}

abstract class _Posts implements PostsModel {
  const factory _Posts({final List<PostModel>? posts}) = _$_Posts;

  factory _Posts.fromJson(Map<String, dynamic> json) = _$_Posts.fromJson;

  @override
  List<PostModel>? get posts;
  @override
  @JsonKey(ignore: true)
  _$$_PostsCopyWith<_$_Posts> get copyWith =>
      throw _privateConstructorUsedError;
}
