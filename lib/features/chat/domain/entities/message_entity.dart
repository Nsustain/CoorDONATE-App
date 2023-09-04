import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({String? msg, DateTime? time, String? type}) = _ChatMessage;
}

