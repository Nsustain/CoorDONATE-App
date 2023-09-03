import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';

@freezed
class Message with _$Message {
  const factory Message({String? msg, DateTime? time}) = _Message;
}
