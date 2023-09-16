import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';

@freezed
class Message with _$Message {
  const factory Message({
    String? id,
    String? recipientId,
    String? senderId,
    String? content,
    DateTime? time,
    bool? isGroup,
    bool? status,
  }) = _Message;
}
