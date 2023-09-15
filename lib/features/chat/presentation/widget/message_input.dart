import 'package:flutter/material.dart';

class MessageInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final VoidCallback onSendPressed;

  MessageInputWidget({
    required this.controller,
    required this.hintText,
    required this.onSendPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: onSendPressed,
          ),
        ],
      ),
    );
  }
}
