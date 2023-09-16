import 'package:coordonate_app/features/chat/domain/entities/message_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
@JsonSerializable()
class MessageModel with _$MessageModel {
  const factory MessageModel({
    String? id,
    String? recipientId,
    String? senderId,
    String? content,
    DateTime? time,
    bool? isGroup,
    bool? status,
  }) = _MessageModel;

  const MessageModel._();

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  Message toEntity() => Message(
        id: id,
        recipientId: recipientId,
        senderId: senderId,
        content: content,
        time: time,
        isGroup: isGroup,
        status: status,
      );
}
