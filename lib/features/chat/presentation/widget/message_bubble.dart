import 'package:coordonate_app/utils/constants/styles.dart';
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
    final messageBubbleRadius = const BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
      bottomRight: Radius.circular(8),
    );
    final senderBubbleColor = Colors.grey[300];
    ;
    final recipientBubbleColor = kPrimaryColor;

    return Row(
      mainAxisAlignment:
          isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (!isSender)
          Padding(
            padding: const EdgeInsets.only(top: 6, bottom: 8, right: 3),
            child: CircleAvatar(
              backgroundImage: NetworkImage(recipientAvatarUrl),
              radius: 20.0,
            ),
          ),
        Flexible(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 250.0, // Set the maximum width for the container
            ),
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
              crossAxisAlignment: isSender
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: isSender ? Alignment.topLeft : Alignment.topLeft,
                  child: Text(
                    message,
                    style: TextStyle(
                        fontSize: 16.0,
                        color: isSender ? Colors.black : Colors.white),
                    textAlign: isSender ? TextAlign.end : TextAlign.start,
                  ),
                ),
                SizedBox(height: 4.0),
                Row(
                  mainAxisAlignment: isSender
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: isSender
                          ? EdgeInsets.only(
                              top: 0, bottom: 0, right: 0, left: 0)
                          : EdgeInsets.only(
                              top: 0, bottom: 0, right: 0, left: 187),
                      child: Text(
                        timestamp,
                        style: TextStyle(
                            fontSize: 10.0,
                            color: isSender ? Colors.black : Colors.white),
                      ),
                    ),
                    if (isSender)
                      Icon(
                        isRead ? Icons.done_all : Icons.done,
                        size: 16.0,
                        color: Colors.grey[600],
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
