// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  String? get id => throw _privateConstructorUsedError;
  String? get senderName => throw _privateConstructorUsedError;
  String? get recipientName => throw _privateConstructorUsedError;
  ChatMessageModel get msg => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  bool? get selected => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  bool? get isGroup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {String? id,
      String? senderName,
      String? recipientName,
      ChatMessageModel msg,
      DateTime? time,
      String? icon,
      bool? selected,
      bool? status,
      bool? isGroup});

  $ChatMessageModelCopyWith<$Res> get msg;
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? senderName = freezed,
    Object? recipientName = freezed,
    Object? msg = null,
    Object? time = freezed,
    Object? icon = freezed,
    Object? selected = freezed,
    Object? status = freezed,
    Object? isGroup = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      isGroup: freezed == isGroup
          ? _value.isGroup
          : isGroup // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatMessageModelCopyWith<$Res> get msg {
    return $ChatMessageModelCopyWith<$Res>(_value.msg, (value) {
      return _then(_value.copyWith(msg: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatModelCopyWith<$Res> implements $ChatModelCopyWith<$Res> {
  factory _$$_ChatModelCopyWith(
          _$_ChatModel value, $Res Function(_$_ChatModel) then) =
      __$$_ChatModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? senderName,
      String? recipientName,
      ChatMessageModel msg,
      DateTime? time,
      String? icon,
      bool? selected,
      bool? status,
      bool? isGroup});

  @override
  $ChatMessageModelCopyWith<$Res> get msg;
}

/// @nodoc
class __$$_ChatModelCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$_ChatModel>
    implements _$$_ChatModelCopyWith<$Res> {
  __$$_ChatModelCopyWithImpl(
      _$_ChatModel _value, $Res Function(_$_ChatModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? senderName = freezed,
    Object? recipientName = freezed,
    Object? msg = null,
    Object? time = freezed,
    Object? icon = freezed,
    Object? selected = freezed,
    Object? status = freezed,
    Object? isGroup = freezed,
  }) {
    return _then(_$_ChatModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      recipientName: freezed == recipientName
          ? _value.recipientName
          : recipientName // ignore: cast_nullable_to_non_nullable
              as String?,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      isGroup: freezed == isGroup
          ? _value.isGroup
          : isGroup // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatModel extends _ChatModel {
  const _$_ChatModel(
      {this.id,
      this.senderName,
      this.recipientName,
      required this.msg,
      this.time,
      this.icon,
      this.selected,
      this.status,
      this.isGroup})
      : super._();

  factory _$_ChatModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatModelFromJson(json);

  @override
  final String? id;
  @override
  final String? senderName;
  @override
  final String? recipientName;
  @override
  final ChatMessageModel msg;
  @override
  final DateTime? time;
  @override
  final String? icon;
  @override
  final bool? selected;
  @override
  final bool? status;
  @override
  final bool? isGroup;

  @override
  String toString() {
    return 'ChatModel(id: $id, senderName: $senderName, recipientName: $recipientName, msg: $msg, time: $time, icon: $icon, selected: $selected, status: $status, isGroup: $isGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.recipientName, recipientName) ||
                other.recipientName == recipientName) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isGroup, isGroup) || other.isGroup == isGroup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderName, recipientName,
      msg, time, icon, selected, status, isGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatModelCopyWith<_$_ChatModel> get copyWith =>
      __$$_ChatModelCopyWithImpl<_$_ChatModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatModelToJson(
      this,
    );
  }
}

abstract class _ChatModel extends ChatModel {
  const factory _ChatModel(
      {final String? id,
      final String? senderName,
      final String? recipientName,
      required final ChatMessageModel msg,
      final DateTime? time,
      final String? icon,
      final bool? selected,
      final bool? status,
      final bool? isGroup}) = _$_ChatModel;
  const _ChatModel._() : super._();

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$_ChatModel.fromJson;

  @override
  String? get id;
  @override
  String? get senderName;
  @override
  String? get recipientName;
  @override
  ChatMessageModel get msg;
  @override
  DateTime? get time;
  @override
  String? get icon;
  @override
  bool? get selected;
  @override
  bool? get status;
  @override
  bool? get isGroup;
  @override
  @JsonKey(ignore: true)
  _$$_ChatModelCopyWith<_$_ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}
