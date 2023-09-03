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
  String? get sender => throw _privateConstructorUsedError;
  String? get recipient => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  bool? get selected => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get chat => throw _privateConstructorUsedError;
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
      String? sender,
      String? recipient,
      DateTime? time,
      String? icon,
      bool? selected,
      bool? status,
      String? chat,
      bool? isGroup});
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
    Object? sender = freezed,
    Object? recipient = freezed,
    Object? time = freezed,
    Object? icon = freezed,
    Object? selected = freezed,
    Object? status = freezed,
    Object? chat = freezed,
    Object? isGroup = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
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
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as String?,
      isGroup: freezed == isGroup
          ? _value.isGroup
          : isGroup // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
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
      String? sender,
      String? recipient,
      DateTime? time,
      String? icon,
      bool? selected,
      bool? status,
      String? chat,
      bool? isGroup});
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
    Object? sender = freezed,
    Object? recipient = freezed,
    Object? time = freezed,
    Object? icon = freezed,
    Object? selected = freezed,
    Object? status = freezed,
    Object? chat = freezed,
    Object? isGroup = freezed,
  }) {
    return _then(_$_Chat(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
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
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as String?,
      isGroup: freezed == isGroup
          ? _value.isGroup
          : isGroup // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Chat with DiagnosticableTreeMixin implements _Chat {
  const _$_Chat(
      {this.id,
      this.sender,
      this.recipient,
      this.time,
      this.icon,
      this.selected = false,
      this.status = false,
      this.chat,
      this.isGroup = false});

  @override
  final String? id;
  @override
  final String? sender;
  @override
  final String? recipient;
  @override
  final DateTime? time;
  @override
  final String? icon;
  @override
  @JsonKey()
  final bool? selected;
  @override
  @JsonKey()
  final bool? status;
  @override
  final String? chat;
  @override
  @JsonKey()
  final bool? isGroup;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Chat(id: $id, sender: $sender, recipient: $recipient, time: $time, icon: $icon, selected: $selected, status: $status, chat: $chat, isGroup: $isGroup)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Chat'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sender', sender))
      ..add(DiagnosticsProperty('recipient', recipient))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('selected', selected))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('chat', chat))
      ..add(DiagnosticsProperty('isGroup', isGroup));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.isGroup, isGroup) || other.isGroup == isGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, sender, recipient, time,
      icon, selected, status, chat, isGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCopyWith<_$_Chat> get copyWith =>
      __$$_ChatCopyWithImpl<_$_Chat>(this, _$identity);
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {final String? id,
      final String? sender,
      final String? recipient,
      final DateTime? time,
      final String? icon,
      final bool? selected,
      final bool? status,
      final String? chat,
      final bool? isGroup}) = _$_Chat;

  @override
  String? get id;
  @override
  String? get sender;
  @override
  String? get recipient;
  @override
  DateTime? get time;
  @override
  String? get icon;
  @override
  bool? get selected;
  @override
  bool? get status;
  @override
  String? get chat;
  @override
  bool? get isGroup;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCopyWith<_$_Chat> get copyWith => throw _privateConstructorUsedError;
}
