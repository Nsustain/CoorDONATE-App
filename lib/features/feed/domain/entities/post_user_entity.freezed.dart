// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostUserEntity {
  String get fullname => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get profileImageUrl => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostUserEntityCopyWith<PostUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostUserEntityCopyWith<$Res> {
  factory $PostUserEntityCopyWith(
          PostUserEntity value, $Res Function(PostUserEntity) then) =
      _$PostUserEntityCopyWithImpl<$Res, PostUserEntity>;
  @useResult
  $Res call(
      {String fullname,
      String username,
      String profileImageUrl,
      bool isVerified,
      String email,
      String role,
      int id});
}

/// @nodoc
class _$PostUserEntityCopyWithImpl<$Res, $Val extends PostUserEntity>
    implements $PostUserEntityCopyWith<$Res> {
  _$PostUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = null,
    Object? username = null,
    Object? profileImageUrl = null,
    Object? isVerified = null,
    Object? email = null,
    Object? role = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostUserEntityCopyWith<$Res>
    implements $PostUserEntityCopyWith<$Res> {
  factory _$$_PostUserEntityCopyWith(
          _$_PostUserEntity value, $Res Function(_$_PostUserEntity) then) =
      __$$_PostUserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullname,
      String username,
      String profileImageUrl,
      bool isVerified,
      String email,
      String role,
      int id});
}

/// @nodoc
class __$$_PostUserEntityCopyWithImpl<$Res>
    extends _$PostUserEntityCopyWithImpl<$Res, _$_PostUserEntity>
    implements _$$_PostUserEntityCopyWith<$Res> {
  __$$_PostUserEntityCopyWithImpl(
      _$_PostUserEntity _value, $Res Function(_$_PostUserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullname = null,
    Object? username = null,
    Object? profileImageUrl = null,
    Object? isVerified = null,
    Object? email = null,
    Object? role = null,
    Object? id = null,
  }) {
    return _then(_$_PostUserEntity(
      fullname: null == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PostUserEntity implements _PostUserEntity {
  const _$_PostUserEntity(
      {required this.fullname,
      required this.username,
      required this.profileImageUrl,
      required this.isVerified,
      required this.email,
      required this.role,
      required this.id});

  @override
  final String fullname;
  @override
  final String username;
  @override
  final String profileImageUrl;
  @override
  final bool isVerified;
  @override
  final String email;
  @override
  final String role;
  @override
  final int id;

  @override
  String toString() {
    return 'PostUserEntity(fullname: $fullname, username: $username, profileImageUrl: $profileImageUrl, isVerified: $isVerified, email: $email, role: $role, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostUserEntity &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullname, username,
      profileImageUrl, isVerified, email, role, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostUserEntityCopyWith<_$_PostUserEntity> get copyWith =>
      __$$_PostUserEntityCopyWithImpl<_$_PostUserEntity>(this, _$identity);
}

abstract class _PostUserEntity implements PostUserEntity {
  const factory _PostUserEntity(
      {required final String fullname,
      required final String username,
      required final String profileImageUrl,
      required final bool isVerified,
      required final String email,
      required final String role,
      required final int id}) = _$_PostUserEntity;

  @override
  String get fullname;
  @override
  String get username;
  @override
  String get profileImageUrl;
  @override
  bool get isVerified;
  @override
  String get email;
  @override
  String get role;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_PostUserEntityCopyWith<_$_PostUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
