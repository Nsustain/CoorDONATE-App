import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_feed_reaction/flutter_feed_reaction.dart';
import 'package:lottie/lottie.dart';

class PostReactions extends StatefulWidget {
  const PostReactions({super.key});

  @override
  State<PostReactions> createState() => PostReactionsState();
}

class PostReactionsState extends State<PostReactions> {
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
            _differentWidgetReaction(),
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

  Widget _differentWidgetReaction() {
    int _selectedReactionId = 0;

    List<ImageIcon> reactionIcons = [
      ImageIcon(
        AssetImage(
          'assets/reactions/emojies/like.png',
        ),
        size: 70.h,
      ),
      ImageIcon(
        AssetImage(
          'assets/reactions/emojies/care.png',
        ),
        size: 70.h,
      ),
      ImageIcon(
        AssetImage(
          'assets/reactions/emojies/angry.png',
        ),
        size: 70.h,
      ),
      ImageIcon(
        AssetImage(
          'assets/reactions/emojies/heart.png',
        ),
        size: 70.h,
      ),
      ImageIcon(
        AssetImage(
          'assets/reactions/emojies/lol.png',
        ),
        size: 70.h,
      ),
      ImageIcon(
        AssetImage(
          'assets/reactions/emojies/sad.png',
        ),
        size: 70.h,
      ),
      ImageIcon(
        AssetImage(
          'assets/reactions/emojies/none.png',
        ),
        size: 70.h,
      ),
      ImageIcon(
        AssetImage(
          'assets/reactions/emojies/after_like.png',
        ),
        size: 70.h,
      ),
    ];

    ImageIcon _selectedEmoji = reactionIcons[0];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FlutterFeedReaction(
          reactions: [
            FeedReaction(
                id: 0,
                header: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  child: Text(
                    "Like",
                    style: TextStyle(fontSize: 8.0, color: Colors.white),
                  ),
                ),
                reaction: Lottie.asset(
                  'assets/reactions/lottie/care.json',
                )),
            FeedReaction(
                id: 1,
                header: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  padding: EdgeInsets.only(
                    left: 7.0,
                    right: 7.0,
                    top: 2.0,
                    bottom: 2.0,
                  ),
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Love",
                    style: TextStyle(fontSize: 8.0, color: Colors.white),
                  ),
                ),
                reaction: Lottie.asset(
                  'assets/reactions/lottie/heart.json',
                )),
            FeedReaction(
              id: 2,
              header: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black.withOpacity(0.6),
                ),
                padding: EdgeInsets.only(
                  left: 7.0,
                  right: 7.0,
                  top: 2.0,
                  bottom: 2.0,
                ),
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Care",
                  style: TextStyle(fontSize: 8.0, color: Colors.white),
                ),
              ),
              reaction: Lottie.asset(
                "assets/reactions/lottie/care.json",
              ),
            ),
            FeedReaction(
                id: 3,
                header: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  padding: EdgeInsets.only(
                    left: 7.0,
                    right: 7.0,
                    top: 2.0,
                    bottom: 2.0,
                  ),
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Lol",
                    style: TextStyle(fontSize: 8.0, color: Colors.white),
                  ),
                ),
                reaction: Lottie.asset(
                  'assets/reactions/lottie/lol.json',
                )),
            FeedReaction(
                id: 4,
                header: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black.withOpacity(0.6),
                  ),
                  padding: EdgeInsets.only(
                    left: 7.0,
                    right: 7.0,
                    top: 2.0,
                    bottom: 2.0,
                  ),
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Sad",
                    style: TextStyle(fontSize: 8.0, color: Colors.white),
                  ),
                ),
                reaction: Lottie.asset(
                  'assets/reactions/lottie/sad.json',
                )),
          ],
          prefix: _PrefixIcon(icon: _selectedEmoji),
          onReactionSelected: (reaction) {
            print('onreactionselected');
            setState(() {
              _selectedEmoji = reactionIcons[reaction.id];
            });
          },
          onPressed: () {
            // if (_selectedReactionId == 0) {
            //   setState(() {
            //     _selectedReactionId = 7;
            //   });
            // } else {
            //   setState(() {
            //     _selectedReactionId = 0;
            //   });
            // }
            _selectedEmoji = reactionIcons[0];
          },
          dragSpace: 50.h,
        ),
      ],
    );
  }
}

class _PrefixIcon extends StatefulWidget {
  final ImageIcon icon;
  const _PrefixIcon({super.key, required this.icon});

  @override
  State<_PrefixIcon> createState() => __PrefixIconState();
}

class __PrefixIconState extends State<_PrefixIcon> {
  @override
  Widget build(BuildContext context) {
    print('prefix_icon');
    return widget.icon;
  }
}
