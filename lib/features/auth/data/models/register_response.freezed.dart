// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return _RegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$RegisterResponse {
  String get status => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterResponseCopyWith<RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterResponseCopyWith<$Res> {
  factory $RegisterResponseCopyWith(
          RegisterResponse value, $Res Function(RegisterResponse) then) =
      _$RegisterResponseCopyWithImpl<$Res, RegisterResponse>;
  @useResult
  $Res call({String status, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$RegisterResponseCopyWithImpl<$Res, $Val extends RegisterResponse>
    implements $RegisterResponseCopyWith<$Res> {
  _$RegisterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterResponseCopyWith<$Res>
    implements $RegisterResponseCopyWith<$Res> {
  factory _$$_RegisterResponseCopyWith(
          _$_RegisterResponse value, $Res Function(_$_RegisterResponse) then) =
      __$$_RegisterResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_RegisterResponseCopyWithImpl<$Res>
    extends _$RegisterResponseCopyWithImpl<$Res, _$_RegisterResponse>
    implements _$$_RegisterResponseCopyWith<$Res> {
  __$$_RegisterResponseCopyWithImpl(
      _$_RegisterResponse _value, $Res Function(_$_RegisterResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$_RegisterResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterResponse extends _RegisterResponse {
  const _$_RegisterResponse({required this.status, required this.data})
      : super._();

  factory _$_RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterResponseFromJson(json);

  @override
  final String status;
  @override
  final Data data;

  @override
  String toString() {
    return 'RegisterResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterResponseCopyWith<_$_RegisterResponse> get copyWith =>
      __$$_RegisterResponseCopyWithImpl<_$_RegisterResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterResponseToJson(
      this,
    );
  }
}

abstract class _RegisterResponse extends RegisterResponse {
  const factory _RegisterResponse(
      {required final String status,
      required final Data data}) = _$_RegisterResponse;
  const _RegisterResponse._() : super._();

  factory _RegisterResponse.fromJson(Map<String, dynamic> json) =
      _$_RegisterResponse.fromJson;

  @override
  String get status;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterResponseCopyWith<_$_RegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
