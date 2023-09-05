import 'package:coordonate_app/features/chat/data/models/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel({
    String? id,
    String? senderName,
    String? recipientName,
    required ChatMessageModel msg,
    DateTime? time,
    String? icon,
    bool? selected,
    bool? status,
    bool? isGroup,
  }) = _ChatModel;

  const ChatModel._();

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
