import 'package:coordonate_app/features/chat/domain/entities/message_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_entity.freezed.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    String? id,
    // String? senderId,
    String? senderName,
    // String? recipientId,
    String? recipientName,
    // String? chatMessage,
    required ChatMessage msg,
    DateTime? time,
    bool? status,
    bool? isGroup,
    bool? selected,
    String? icon,
  }) = _Chat;
}
