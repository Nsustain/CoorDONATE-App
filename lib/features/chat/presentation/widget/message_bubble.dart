import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final String timestamp;
  final bool isSender;
  final bool isRead;
  final String recipientAvatarUrl;

  const MessageBubble({
    Key? key,
    required this.message,
    required this.timestamp,
    required this.isSender,
    required this.isRead,
    required this.recipientAvatarUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final messageBubbleRadius = BorderRadius.circular(8.0);
    final senderBubbleColor = Colors.blue;
    final recipientBubbleColor = Colors.grey[300];

    return Row(
      mainAxisAlignment:
          isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (!isSender)
          CircleAvatar(
            backgroundImage: NetworkImage(recipientAvatarUrl),
            radius: 16.0,
          ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: isSender ? senderBubbleColor : recipientBubbleColor,
              borderRadius: messageBubbleRadius,
            ),
            margin: EdgeInsets.symmetric(
              vertical: 4.0,
              horizontal: 8.0,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 12.0,
            ),
            child: Column(
              crossAxisAlignment:
                  isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 4.0),
                Text(
                  timestamp,
                  style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ),
        if (isSender)
          Icon(
            isRead ? Icons.done_all : Icons.done,
            size: 16.0,
            color: Colors.grey[600],
          ),
      ],
    );
  }
}
