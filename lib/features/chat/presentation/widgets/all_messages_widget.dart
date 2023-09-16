import 'package:coordonate_app/core/colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllMessage extends StatelessWidget {
  const AllMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 24,
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                'assets/images/auth/birthday.jpg',
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5, top: 10),
          child: Column(
            children: [
              Text(
                "Joshua",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                "hello there",
                style: TextStyle(
                    fontSize: 14,
                    color: textColor,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 30, top: 10),
          child: Column(
            children: [
              Text("8:30", style: TextStyle(fontSize: 16)),
              CircleAvatar(
                radius: 10,
                backgroundColor: primary,
                child: Text(
                  "3",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
