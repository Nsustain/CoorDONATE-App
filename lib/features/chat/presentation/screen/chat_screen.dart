// import 'package:flutter/material.dart';
// import 'package:flutter_chat_types/flutter_chat_types.dart';

// import '../../domain/entities/message_entity.dart';
// import '../../domain/entities/recipient_entitiy.dart';
// import '../widget/message_bubble.dart';
// import '../widget/message_input.dart';

// class ChatRoom extends StatefulWidget {
//   @override
//   _ChatRoomState createState() => _ChatRoomState();
// }

// class _ChatRoomState extends State<ChatRoom> {
//   TextEditingController _messageController = TextEditingController();
//   List<ChatMessage> messages = [];

//   void _sendMessage(Recipient recipient) {
//     String messageText = _messageController.text;
//     ChatMessage message = ChatMessage(
//       message: messageText,
//       time: DateTime.now(),
//       type: 'text',
//     );
//     setState(() {
//       messages.add(message);
//     });
//     _messageController.clear();
//   }

//   Recipient recipient = Recipient(
//     recipientId: 'recipient_id',
//     recipientUrl: 'recipient_url',
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Row(
//           children: [
//             IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
//             CircleAvatar(
//               backgroundImage: AssetImage('assets/profile_image.png'),
//               radius: 16.0,
//             ),
//             SizedBox(width: 8.0),
//             Column(
//               children: [
//                 Text(
//                   "userName",
//                   style: TextStyle(fontSize: 15),
//                 ),
//                 Text("lastseen", style: TextStyle(fontSize: 10))
//               ],
//             )
//           ],
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.video_call),
//             onPressed: () {
//               // Implement video call logic here
//               print('Video call pressed');
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.call),
//             onPressed: () {
//               // Implement voice call logic here
//               print('Voice call pressed');
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: messages.length,
//               itemBuilder: (context, index) {
//                 return MessageBubble(
//                   message:
//                       messages[index].message ?? '', // Pass the message text
//                   timestamp: "9:30 AM",
//                   isSender: false, // false for recipient, true for sender
//                   isRead: true,
//                   recipientAvatarUrl: "https://example.com/avatar.png",
//                 );
//               },
//             ),
//           ),
//           MessageInputWidget(
//             controller: _messageController,
//             hintText: 'Write a message...',
//             onSendPressed: () => _sendMessage(recipient),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Recipient recipient = Recipient(
//   recipientId: 'recipient_id',
//   recipientUrl: 'recipient_url',
// );

