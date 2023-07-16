import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostUser extends StatelessWidget {
  const PostUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/feeds/nelson-mandela.jpg'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Text(
                'Nelson Mandela Foundation',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Icon(
              Icons.verified,
              color: Theme.of(context).primaryColor,
              size: 20.h,
            ),
            SizedBox(
              width: 4.w,
            ),
            Container(
              height: 5.h,
              width: 5.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              '1d',
              style: TextStyle(fontSize: 13.sp),
            )
          ],
        ),
        Positioned(
          top: 30.h,
          left: 50.h,
          child: Text(
            '@nelsonmandelafoundation',
            style: TextStyle(
                fontSize: 13.sp, color: Colors.black.withOpacity(0.5)),
          ),
        )
      ],
    );
  }
}
