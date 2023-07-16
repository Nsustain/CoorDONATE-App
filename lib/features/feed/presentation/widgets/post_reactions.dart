import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostReactions extends StatefulWidget {
  const PostReactions({super.key});

  @override
  State<PostReactions> createState() => PostReactionsState();
}

class PostReactionsState extends State<PostReactions> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 60.w,
      runSpacing: 10.w,
      children: [
        Column(
          children: [
            IconButton.outlined(
              onPressed: () {},
              icon: Icon(Icons.thumb_up_alt_outlined),
              splashColor: Colors.transparent,
            ),
            Text(
              'Like',
              style: TextStyle(fontSize: 13.sp),
            ),
            Text(
              '1.2k',
              style: TextStyle(
                fontSize: 10.sp,
                color: Colors.black.withOpacity(0.5),
              ),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton.outlined(
              splashRadius: 0.1,
              onPressed: () {},
              icon: Icon(Icons.mode_comment_outlined),
              splashColor: Colors.transparent,
              padding: EdgeInsets.zero,
            ),
            Text(
              'Comment',
              style: TextStyle(fontSize: 13.sp),
            ),
            Text(
              '1.2k',
              style: TextStyle(
                fontSize: 10.sp,
                color: Colors.black.withOpacity(0.5),
              ),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton.outlined(
              onPressed: () {},
              icon: Icon(Icons.share),
              splashColor: Colors.transparent,
            ),
            Text(
              'Share',
              style: TextStyle(fontSize: 13.sp),
            ),
            Text(
              '1.2k',
              style: TextStyle(
                fontSize: 10.sp,
                color: Colors.black.withOpacity(0.5),
              ),
            )
          ],
        ),
        IconButton.outlined(
          onPressed: () {},
          icon: Icon(Icons.bookmark_outline),
          splashColor: Colors.transparent,
        ),
      ],
    );
  }
}
