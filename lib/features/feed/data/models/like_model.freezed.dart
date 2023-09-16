// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LikeModel _$LikeModelFromJson(Map<String, dynamic> json) {
  return _LikeModel.fromJson(json);
}

/// @nodoc
mixin _$LikeModel {
  String get id => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get userProfileImageUrl => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeModelCopyWith<LikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeModelCopyWith<$Res> {
  factory $LikeModelCopyWith(LikeModel value, $Res Function(LikeModel) then) =
      _$LikeModelCopyWithImpl<$Res, LikeModel>;
  @useResult
  $Res call(
      {String id,
      String postId,
      String userId,
      String userName,
      String? userProfileImageUrl,
      String timestamp});
}

/// @nodoc
class _$LikeModelCopyWithImpl<$Res, $Val extends LikeModel>
    implements $LikeModelCopyWith<$Res> {
  _$LikeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? userName = null,
    Object? userProfileImageUrl = freezed,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userProfileImageUrl: freezed == userProfileImageUrl
          ? _value.userProfileImageUrl
          : userProfileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LikeModelCopyWith<$Res> implements $LikeModelCopyWith<$Res> {
  factory _$$_LikeModelCopyWith(
          _$_LikeModel value, $Res Function(_$_LikeModel) then) =
      __$$_LikeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String postId,
      String userId,
      String userName,
      String? userProfileImageUrl,
      String timestamp});
}

/// @nodoc
class __$$_LikeModelCopyWithImpl<$Res>
    extends _$LikeModelCopyWithImpl<$Res, _$_LikeModel>
    implements _$$_LikeModelCopyWith<$Res> {
  __$$_LikeModelCopyWithImpl(
      _$_LikeModel _value, $Res Function(_$_LikeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? userName = null,
    Object? userProfileImageUrl = freezed,
    Object? timestamp = null,
  }) {
    return _then(_$_LikeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userProfileImageUrl: freezed == userProfileImageUrl
          ? _value.userProfileImageUrl
          : userProfileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LikeModel implements _LikeModel {
  const _$_LikeModel(
      {required this.id,
      required this.postId,
      required this.userId,
      required this.userName,
      required this.userProfileImageUrl,
      required this.timestamp});

  factory _$_LikeModel.fromJson(Map<String, dynamic> json) =>
      _$$_LikeModelFromJson(json);

  @override
  final String id;
  @override
  final String postId;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String? userProfileImageUrl;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'LikeModel(id: $id, postId: $postId, userId: $userId, userName: $userName, userProfileImageUrl: $userProfileImageUrl, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userProfileImageUrl, userProfileImageUrl) ||
                other.userProfileImageUrl == userProfileImageUrl) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, userId, userName,
      userProfileImageUrl, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikeModelCopyWith<_$_LikeModel> get copyWith =>
      __$$_LikeModelCopyWithImpl<_$_LikeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikeModelToJson(
      this,
    );
  }
}

abstract class _LikeModel implements LikeModel {
  const factory _LikeModel(
      {required final String id,
      required final String postId,
      required final String userId,
      required final String userName,
      required final String? userProfileImageUrl,
      required final String timestamp}) = _$_LikeModel;

  factory _LikeModel.fromJson(Map<String, dynamic> json) =
      _$_LikeModel.fromJson;

  @override
  String get id;
  @override
  String get postId;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String? get userProfileImageUrl;
  @override
  String get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_LikeModelCopyWith<_$_LikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
