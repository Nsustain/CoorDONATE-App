import 'package:coordonate_app/features/chat/domain/entities/chat_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../domain/entities/message_entity.dart';
import '../widget/message_bubble.dart';
import '../widget/message_input.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  TextEditingController _messageController = TextEditingController();
  List<Chat> messages = [];

  String recipientId = "user1";
  String senderId = 'user2';
  void _sendMessage(String recipientId) {
    String messageText = _messageController.text;
    Chat message = Chat(
      // chatMessage: messageText,
      time: DateTime.now(),
      msg: ChatMessage(
        msg: messageText,
        time: DateTime.now(),
      )
      // senderId: senderId,
      // recipientId: recipientId,
    );
    setState(() {
      messages.add(message);
    });
    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            CircleAvatar(
              backgroundImage: AssetImage('assets/profile_image.png'),
              radius: 16.0,
            ),
            SizedBox(width: 8.0),
            Column(
              children: [
                Text(
                  "userName",
                  style: TextStyle(fontSize: 15),
                ),
                Text("lastseen", style: TextStyle(fontSize: 10))
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              // Implement voice call logic here
              print('Voice call pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: () {
              // Implement video call logic here
              print('Video call pressed');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return const MessageBubble(
                  // message: messages[index].chatMessage ??
                  message: "hello" ??
                      '', // Pass the message text
                  timestamp: "9:30 AM",
                  isSender: true, // false for recipient, true for sender
                  isRead: true,
                  recipientAvatarUrl: "https://example.com/avatar.png",
                );
              },
            ),
          ),
          MessageInputWidget(
            controller: _messageController,
            hintText: 'Write a message...',
            onSendPressed: () => _sendMessage(recipientId),
          ),
        ],
      ),
    );
  }
}
