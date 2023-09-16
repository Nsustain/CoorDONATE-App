import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_room_entity.freezed.dart';

@freezed
class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    String? id,
    List<String>? userChatRooms,
  }) = _ChatRoom;
}
