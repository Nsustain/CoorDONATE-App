import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_entity.freezed.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    String? id,
    String? sender,
    String? recipient,
    DateTime? time,
    String? icon,
    @Default(false) bool? selected,
    @Default(false) bool? status,
    String? chat,
    @Default(false) bool? isGroup,
  }) = _Chat;
}
