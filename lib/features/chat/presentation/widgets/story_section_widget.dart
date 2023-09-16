import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(
                'assets/images/auth/birthday.jpg',
              ),
            ),
          ),
          Text(
            "Joshua",
            style: TextStyle(
                fontSize: 12,
                color: Colors.black87,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
