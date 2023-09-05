// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostUserModel _$PostUserModelFromJson(Map<String, dynamic> json) {
  return _PostUserModel.fromJson(json);
}

/// @nodoc
mixin _$PostUserModel {
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get verified => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostUserModelCopyWith<PostUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostUserModelCopyWith<$Res> {
  factory $PostUserModelCopyWith(
          PostUserModel value, $Res Function(PostUserModel) then) =
      _$PostUserModelCopyWithImpl<$Res, PostUserModel>;
  @useResult
  $Res call(
      {String? name,
      String? username,
      String? photo,
      String? verified,
      String? email,
      String? role,
      int? id});
}

/// @nodoc
class _$PostUserModelCopyWithImpl<$Res, $Val extends PostUserModel>
    implements $PostUserModelCopyWith<$Res> {
  _$PostUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? photo = freezed,
    Object? verified = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostUserModelCopyWith<$Res>
    implements $PostUserModelCopyWith<$Res> {
  factory _$$_PostUserModelCopyWith(
          _$_PostUserModel value, $Res Function(_$_PostUserModel) then) =
      __$$_PostUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? username,
      String? photo,
      String? verified,
      String? email,
      String? role,
      int? id});
}

/// @nodoc
class __$$_PostUserModelCopyWithImpl<$Res>
    extends _$PostUserModelCopyWithImpl<$Res, _$_PostUserModel>
    implements _$$_PostUserModelCopyWith<$Res> {
  __$$_PostUserModelCopyWithImpl(
      _$_PostUserModel _value, $Res Function(_$_PostUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? photo = freezed,
    Object? verified = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_PostUserModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostUserModel implements _PostUserModel {
  const _$_PostUserModel(
      {required this.name,
      required this.username,
      required this.photo,
      required this.verified,
      required this.email,
      required this.role,
      required this.id});

  factory _$_PostUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostUserModelFromJson(json);

  @override
  final String? name;
  @override
  final String? username;
  @override
  final String? photo;
  @override
  final String? verified;
  @override
  final String? email;
  @override
  final String? role;
  @override
  final int? id;

  @override
  String toString() {
    return 'PostUserModel(name: $name, username: $username, photo: $photo, verified: $verified, email: $email, role: $role, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostUserModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, username, photo, verified, email, role, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostUserModelCopyWith<_$_PostUserModel> get copyWith =>
      __$$_PostUserModelCopyWithImpl<_$_PostUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostUserModelToJson(
      this,
    );
  }
}

abstract class _PostUserModel implements PostUserModel {
  const factory _PostUserModel(
      {required final String? name,
      required final String? username,
      required final String? photo,
      required final String? verified,
      required final String? email,
      required final String? role,
      required final int? id}) = _$_PostUserModel;

  factory _PostUserModel.fromJson(Map<String, dynamic> json) =
      _$_PostUserModel.fromJson;

  @override
  String? get name;
  @override
  String? get username;
  @override
  String? get photo;
  @override
  String? get verified;
  @override
  String? get email;
  @override
  String? get role;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$_PostUserModelCopyWith<_$_PostUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
