// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePostParams _$CreatePostParamsFromJson(Map<String, dynamic> json) {
  return _CreatePostParams.fromJson(json);
}

/// @nodoc
mixin _$CreatePostParams {
  String get fileUrl => throw _privateConstructorUsedError;
  String get toBePostedText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePostParamsCopyWith<CreatePostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostParamsCopyWith<$Res> {
  factory $CreatePostParamsCopyWith(
          CreatePostParams value, $Res Function(CreatePostParams) then) =
      _$CreatePostParamsCopyWithImpl<$Res, CreatePostParams>;
  @useResult
  $Res call({String fileUrl, String toBePostedText});
}

/// @nodoc
class _$CreatePostParamsCopyWithImpl<$Res, $Val extends CreatePostParams>
    implements $CreatePostParamsCopyWith<$Res> {
  _$CreatePostParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = null,
    Object? toBePostedText = null,
  }) {
    return _then(_value.copyWith(
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      toBePostedText: null == toBePostedText
          ? _value.toBePostedText
          : toBePostedText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatePostParamsCopyWith<$Res>
    implements $CreatePostParamsCopyWith<$Res> {
  factory _$$_CreatePostParamsCopyWith(
          _$_CreatePostParams value, $Res Function(_$_CreatePostParams) then) =
      __$$_CreatePostParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileUrl, String toBePostedText});
}

/// @nodoc
class __$$_CreatePostParamsCopyWithImpl<$Res>
    extends _$CreatePostParamsCopyWithImpl<$Res, _$_CreatePostParams>
    implements _$$_CreatePostParamsCopyWith<$Res> {
  __$$_CreatePostParamsCopyWithImpl(
      _$_CreatePostParams _value, $Res Function(_$_CreatePostParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileUrl = null,
    Object? toBePostedText = null,
  }) {
    return _then(_$_CreatePostParams(
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
      toBePostedText: null == toBePostedText
          ? _value.toBePostedText
          : toBePostedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePostParams
    with DiagnosticableTreeMixin
    implements _CreatePostParams {
  const _$_CreatePostParams({this.fileUrl = "", this.toBePostedText = ""});

  factory _$_CreatePostParams.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePostParamsFromJson(json);

  @override
  @JsonKey()
  final String fileUrl;
  @override
  @JsonKey()
  final String toBePostedText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePostParams(fileUrl: $fileUrl, toBePostedText: $toBePostedText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePostParams'))
      ..add(DiagnosticsProperty('fileUrl', fileUrl))
      ..add(DiagnosticsProperty('toBePostedText', toBePostedText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePostParams &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.toBePostedText, toBePostedText) ||
                other.toBePostedText == toBePostedText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileUrl, toBePostedText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePostParamsCopyWith<_$_CreatePostParams> get copyWith =>
      __$$_CreatePostParamsCopyWithImpl<_$_CreatePostParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePostParamsToJson(
      this,
    );
  }
}

abstract class _CreatePostParams implements CreatePostParams {
  const factory _CreatePostParams(
      {final String fileUrl,
      final String toBePostedText}) = _$_CreatePostParams;

  factory _CreatePostParams.fromJson(Map<String, dynamic> json) =
      _$_CreatePostParams.fromJson;

  @override
  String get fileUrl;
  @override
  String get toBePostedText;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePostParamsCopyWith<_$_CreatePostParams> get copyWith =>
      throw _privateConstructorUsedError;
}
