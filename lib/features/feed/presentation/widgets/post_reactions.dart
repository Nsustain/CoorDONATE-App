import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostReactions extends StatefulWidget {
  const PostReactions({super.key});

  @override
  State<PostReactions> createState() => PostReactionsState();
}

class PostReactionsState extends State<PostReactions> {
  bool liked = false;

  void toggleLike() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: WrapCrossAlignment.start,
      // spacing: 10.w,
      // runSpacing: 5.w,
      children: [
        Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            IconButton(
              onPressed: toggleLike,
              icon: Icon(
                liked ? Icons.thumb_up_alt : Icons.thumb_up_alt_outlined,
              ),
              splashColor: Colors.transparent,
            ),
            Text(
              'Like',
              style: TextStyle(fontSize: 13.sp),
            ),
          ],
        ),
        SizedBox(
          width: 25.w,
        ),
        Row(
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
            // Text(
            //   '1.2k',
            //   style: TextStyle(
            //     fontSize: 10.sp,
            //     color: Colors.black.withOpacity(0.5),
            //   ),
            // )
          ],
        ),
        SizedBox(
          width: 25.w,
        ),
        Row(
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
            // Text(
            //   '1.2k',
            //   style: TextStyle(
            //     fontSize: 10.sp,
            //     color: Colors.black.withOpacity(0.5),
            //   ),
            // )
          ],
        ),
        SizedBox(
          width: 35.w,
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
