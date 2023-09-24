import '../entities/chat_entity.dart';

abstract class ChatRepository {
  Future<void> sendMessage(Chat chatEntity);
  Future<void> markAsRead(Chat chatEntity);
  Future<List<Chat>> getAllMessages(String chatRoomId);
}

class ChatRepositoryImpl implements ChatRepository {
  @override
  Future<void> sendMessage(Chat chatEntity) async {
    // Implement your logic to send the message
  }

  @override
  Future<void> markAsRead(Chat chatEntity) async {
    // Implement your logic to mark the chat as read
  }

  @override
  Future<List<Chat>> getAllMessages(String chatRoomId) async {
    // Implement your logic to retrieve all messages for the given chatRoomId
    // Perform necessary operations to fetch messages from your data source
    // This method can use an API, database, or any other storage mechanism to retrieve the messages
    // Return the list of messages
  
  }
}