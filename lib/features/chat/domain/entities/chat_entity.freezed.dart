// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Chat {
  String? get id => throw _privateConstructorUsedError;
  String? get senderName => throw _privateConstructorUsedError;
  String? get recipientName => throw _privateConstructorUsedError;
  ChatMessage get msg => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  bool? get selected => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  bool? get isGroup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call(
      {String? id,
      String? senderName,
      String? recipientName,
      ChatMessage msg,
      DateTime? time,
      String? icon,
      bool? selected,
      bool? status,
      bool? isGroup});

  $ChatMessageCopyWith<$Res> get msg;
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

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
              as ChatMessage,
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
  $ChatMessageCopyWith<$Res> get msg {
    return $ChatMessageCopyWith<$Res>(_value.msg, (value) {
      return _then(_value.copyWith(msg: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$_ChatCopyWith(_$_Chat value, $Res Function(_$_Chat) then) =
      __$$_ChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? senderName,
      String? recipientName,
      ChatMessage msg,
      DateTime? time,
      String? icon,
      bool? selected,
      bool? status,
      bool? isGroup});

  @override
  $ChatMessageCopyWith<$Res> get msg;
}

/// @nodoc
class __$$_ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res, _$_Chat>
    implements _$$_ChatCopyWith<$Res> {
  __$$_ChatCopyWithImpl(_$_Chat _value, $Res Function(_$_Chat) _then)
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
    return _then(_$_Chat(
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
              as ChatMessage,
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

class _$_Chat implements _Chat {
  const _$_Chat(
      {this.id,
      this.senderName,
      this.recipientName,
      required this.msg,
      this.time,
      this.icon,
      this.selected,
      this.status,
      this.isGroup});

  @override
  final String? id;
  @override
  final String? senderName;
  @override
  final String? recipientName;
  @override
  final ChatMessage msg;
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
    return 'Chat(id: $id, senderName: $senderName, recipientName: $recipientName, msg: $msg, time: $time, icon: $icon, selected: $selected, status: $status, isGroup: $isGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chat &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, senderName, recipientName,
      msg, time, icon, selected, status, isGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCopyWith<_$_Chat> get copyWith =>
      __$$_ChatCopyWithImpl<_$_Chat>(this, _$identity);
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {final String? id,
      final String? senderName,
      final String? recipientName,
      required final ChatMessage msg,
      final DateTime? time,
      final String? icon,
      final bool? selected,
      final bool? status,
      final bool? isGroup}) = _$_Chat;

  @override
  String? get id;
  @override
  String? get senderName;
  @override
  String? get recipientName;
  @override
  ChatMessage get msg;
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
  _$$_ChatCopyWith<_$_Chat> get copyWith => throw _privateConstructorUsedError;
}
