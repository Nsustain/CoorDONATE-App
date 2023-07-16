import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageButton extends StatefulWidget {
  const MessageButton({super.key});

  @override
  State<MessageButton> createState() => _MessageButtonState();
}

class _MessageButtonState extends State<MessageButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(splashFactory: NoSplash.splashFactory),
      onPressed: () {},
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(
            Icons.messenger_outline_sharp,
            size: 30.h,
          ),
          Positioned(
            right: -5.w,
            top: -8.h,
            child: Container(
              padding: EdgeInsets.all(1.h),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              constraints: BoxConstraints(
                minWidth: 18.w,
              ),
              child: Text(
                '3',
                style: TextStyle(
                    color: Colors.white, fontSize: 20.sp, fontFamily: 'Inter'),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
