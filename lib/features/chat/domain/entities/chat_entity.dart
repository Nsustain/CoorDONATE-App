import 'package:coordonate_app/features/chat/domain/entities/message_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_entity.freezed.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    String? id,
    String? senderName,
    String? recipientName,
    required ChatMessage msg,
    DateTime? time,
    String? icon,
    bool? selected,
    bool? status,
    bool? isGroup,
  }) = _Chat;
}
