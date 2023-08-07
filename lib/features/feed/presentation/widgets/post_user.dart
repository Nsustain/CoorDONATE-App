import 'package:coordonate_app/features/feed/domain/entities/post_user_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostUser extends StatelessWidget {
  final PostUserEntity postUserEntity;
  final String postCreated;
  const PostUser(
      {super.key, required this.postUserEntity, required this.postCreated});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(postUserEntity.profileImageUrl),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.w),
              child: Text(
                postUserEntity.fullname,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
            ),
            if (postUserEntity.isVerified)
              Padding(
                padding: EdgeInsets.only(right: 4.w),
                child: Icon(
                  Icons.verified,
                  color: Theme.of(context).primaryColor,
                  size: 20.h,
                ),
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
              postCreated,
              style: TextStyle(fontSize: 13.sp),
            )
          ],
        ),
        Positioned(
          top: 30.h,
          left: 50.h,
          child: Text(
            postUserEntity.username,
            style: TextStyle(
                fontSize: 13.sp, color: Colors.black.withOpacity(0.5)),
          ),
        )
      ],
    );
  }
}
