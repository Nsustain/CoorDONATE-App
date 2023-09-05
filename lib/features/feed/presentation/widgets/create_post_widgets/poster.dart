import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Poster extends StatelessWidget {
  final String? userPhoto;
  final String? userName;
  const Poster({super.key, required this.userName, required this.userPhoto});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            if (userPhoto != null)
              CircleAvatar(
                backgroundImage: NetworkImage(userPhoto!),
              ),
            if (userName != null)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: Text(
                  userName!,
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
